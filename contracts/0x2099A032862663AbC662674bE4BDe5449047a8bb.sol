contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - panic()
#  - _harvest()
#  - pause()
#
const PERCENT_DIVISOR = 10000

const MAX_FEE = 500


uint8 stor0; offset 160
uint8 rewardTokens; offset 168
address owner;
address wftmAddress;
address sub_1dee25deAddress;
address rewardToken1Address;
address rewardToken2Address;
address sub_df0678f6Address;
address sub_4876ed77Address;
address lpPairAddress;
mapping of uint8 stor8;
address lpToken0Address;
address lpToken1Address;
address sub_8ed8ea7eAddress;
address sub_50d7d613Address;
address sub_87ced3dcAddress;
address sub_a0faeb91Address;
address tombAddress;
mapping of uint32 stor16;
uint8 poolId;
address treasuryAddress; offset 8
uint32 stor18;
address vaultAddress;
uint256 stor18;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
uint256 depositFee;
array of address sub_91245cd9;
array of address sub_2a23ed91;
array of address sub_64be9f57;
array of address sub_1db200ed;
array of address sub_85aaa63b;
array of address sub_d4b25c5b;
array of address sub_1c0730c4;

function sub_1c0730c4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_1c0730c4.length
    return sub_1c0730c4[arg1]
}

function sub_1db200ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_1db200ed.length
    return sub_1db200ed[arg1]
}

function sub_1dee25de(?) payable {
    return sub_1dee25deAddress
}

function totalFee() payable {
    return totalFee
}

function sub_2a23ed91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2a23ed91.length
    return sub_2a23ed91[arg1]
}

function poolId() payable {
    return poolId
}

function lpPair() payable {
    return lpPairAddress
}

function sub_4876ed77(?) payable {
    return sub_4876ed77Address
}

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function paused() payable {
    return bool(stor0)
}

function lpToken0() payable {
    return lpToken0Address
}

function treasury() payable {
    return treasuryAddress
}

function sub_64be9f57(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_64be9f57.length
    return sub_64be9f57[arg1]
}

function depositFee() payable {
    return depositFee
}

function rewardToken1() payable {
    return rewardToken1Address
}

function sub_85aaa63b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_85aaa63b.length
    return sub_85aaa63b[arg1]
}

function lpToken1() payable {
    return lpToken1Address
}

function sub_87ced3dc(?) payable {
    return sub_87ced3dcAddress
}

function sub_8954ffeb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function owner() payable {
    return owner
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function callFee() payable {
    return callFee
}

function sub_91245cd9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_91245cd9.length
    return sub_91245cd9[arg1]
}

function sub_a0faeb91(?) payable {
    return sub_a0faeb91Address
}

function tomb() payable {
    return tombAddress
}

function rewardTokens() payable {
    return rewardTokens
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_d4b25c5b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d4b25c5b.length
    return sub_d4b25c5b[arg1]
}

function rewardToken2() payable {
    return rewardToken2Address
}

function sub_d68e1302(?) payable {
    return sub_d68e1302
}

function sub_df0678f6(?) payable {
    return sub_df0678f6Address
}

function wftm() payable {
    return wftmAddress
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

function sub_fd66533e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[arg1 << 248] = uint8(arg2)
    return 1
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    return 1
}

function updateDepositFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    depositFee = arg1
    emit DepositFeeUpdated(depositFee);
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

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(sub_a0faeb91Address)
    staticcall sub_a0faeb91Address.getUserInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[32]
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
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_a0faeb91Address)
        call sub_a0faeb91Address.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(sub_a0faeb91Address)
    staticcall sub_a0faeb91Address.getUserInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + ext_call.return_data[32] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + ext_call.return_data[32])
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(sub_a0faeb91Address)
    call sub_a0faeb91Address.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpPairAddress)
    call lpPairAddress.0xa9059cbb with:
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
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
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
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ext_call.return_data[0 len 28]
                mem[452 len 0] = 0
                call lpPairAddress with:
                   funct uint32(stor18)
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
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor18)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) << 224, mem[452 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, arg1) >> 32
                mem[452 len 0] = 0
                call lpPairAddress with:
                   funct uint32(stor18)
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
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor18)
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
        require ext_code.size(sub_a0faeb91Address)
        call sub_a0faeb91Address.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ext_call.return_data[0 len 28]
                call lpPairAddress with:
                   funct uint32(stor18)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sub_d68e1302 / ext_call.return_data[0] != sub_d68e1302:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] * sub_d68e1302 / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor18)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) << 224, mem[516 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, arg1) >> 32
                call lpPairAddress with:
                   funct uint32(stor18)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[516 len 4]
            else:
                require arg1
                if arg1 * sub_d68e1302 / arg1 != sub_d68e1302:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg1 * sub_d68e1302 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor18)
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

function sub_23cb2390(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardTokens == 2:
        rewardToken2Address = arg1
        address(stor16[stor4]) = arg2
        require ext_code.size(rewardToken2Address)
        staticcall rewardToken2Address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(stor16[stor4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
        if ext_code.size(rewardToken2Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor4]), uint32(stor16[stor4]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[352 len 4] = 0
        call rewardToken2Address with:
           funct uint32(stor16[stor4])
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor4]), uint32(stor16[stor4]), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor4]):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            mem[260] = rewardToken2Address
            mem[292] = wftmAddress
            sub_64be9f57.length = 2
            s = 0
            idx = 260
            while 324 > idx:
                sub_64be9f57[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
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
            mem[ceil32(return_data.size) + 261] = rewardToken2Address
            mem[ceil32(return_data.size) + 293] = wftmAddress
            sub_64be9f57.length = 2
            s = 0
            idx = ceil32(return_data.size) + 261
            while ceil32(return_data.size) + 325 > idx:
                sub_64be9f57[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
        idx = 2
        while sub_64be9f57.length > idx:
            sub_64be9f57[idx] = 0
            idx = idx + 1
            continue 
        stor8[2] = 1
        rewardTokens = 3
    else:
        if rewardTokens == 3:
            sub_df0678f6Address = arg1
            address(stor16[stor5]) = arg2
            require ext_code.size(sub_df0678f6Address)
            staticcall sub_df0678f6Address.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor16[stor5])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[218 len 10]
            if ext_code.size(sub_df0678f6Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor5]), uint32(stor16[stor5]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[352 len 4] = 0
            call sub_df0678f6Address with:
               funct uint32(stor16[stor5])
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor5]), uint32(stor16[stor5]), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor5]):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                mem[260] = sub_df0678f6Address
                mem[292] = wftmAddress
                sub_1db200ed.length = 2
                s = 0
                idx = 260
                while 324 > idx:
                    sub_1db200ed[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
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
                mem[ceil32(return_data.size) + 261] = sub_df0678f6Address
                mem[ceil32(return_data.size) + 293] = wftmAddress
                sub_1db200ed.length = 2
                s = 0
                idx = ceil32(return_data.size) + 261
                while ceil32(return_data.size) + 325 > idx:
                    sub_1db200ed[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
            idx = 2
            while sub_1db200ed.length > idx:
                sub_1db200ed[idx] = 0
                idx = idx + 1
                continue 
            stor8[3] = 1
        else:
            if rewardTokens != 4:
                return 0
            sub_4876ed77Address = arg1
            address(stor16[stor6]) = arg2
            require ext_code.size(sub_4876ed77Address)
            staticcall sub_4876ed77Address.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor16[stor6])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[218 len 10]
            if ext_code.size(sub_4876ed77Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor6]), uint32(stor16[stor6]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[352 len 4] = 0
            call sub_4876ed77Address with:
               funct uint32(stor16[stor6])
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor6]), uint32(stor16[stor6]), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor16[stor6]):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                mem[260] = sub_4876ed77Address
                mem[292] = wftmAddress
                sub_85aaa63b.length = 2
                s = 0
                idx = 260
                while 324 > idx:
                    sub_85aaa63b[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
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
                mem[ceil32(return_data.size) + 261] = sub_4876ed77Address
                mem[ceil32(return_data.size) + 293] = wftmAddress
                sub_85aaa63b.length = 2
                s = 0
                idx = ceil32(return_data.size) + 261
                while ceil32(return_data.size) + 325 > idx:
                    sub_85aaa63b[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
            idx = 2
            while sub_85aaa63b.length > idx:
                sub_85aaa63b[idx] = 0
                idx = idx + 1
                continue 
            stor8[4] = 1
        rewardTokens = 4
    return 1
}



}
