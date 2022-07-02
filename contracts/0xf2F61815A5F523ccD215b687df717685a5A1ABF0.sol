contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - unpause()
#  - harvest()
#  - panic()
#  - pause()
#  - deposit()
#
const fUSDT = 0x49d68029688eabf473097a2fc38ef61633a3c7a

const sub_50d7d613(?) = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52

const sub_8ed8ea7e(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const PERCENT_DIVISOR = 10000

const SPELL = 0x468003b688943977e6130f4f68f23aad939a1040

const MAX_FEE = 500


uint8 stor0; offset 160
address owner;
address sub_1dee25deAddress;
uint8 rewardTokens; offset 160
address rewardToken1Address;
address lpPairAddress;
address lpToken0Address;
uint8 sub_ec4942da; offset 160
uint128 stor5; offset 160
address lpToken1Address;
mapping of uint8 stor6;
mapping of uint32 stor7;
uint8 stor8;
uint8 poolId; offset 160
address masterChefAddress;
address treasuryAddress;
address vaultAddress;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
array of address sub_91245cd9;
array of address sub_2a23ed91;
array of address sub_3bc5ae64;
array of address sub_217e32c0;

function sub_1dee25de(?) payable {
    return sub_1dee25deAddress
}

function totalFee() payable {
    return totalFee
}

function sub_217e32c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_217e32c0.length
    return sub_217e32c0[arg1]
}

function sub_2a23ed91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2a23ed91.length
    return sub_2a23ed91[arg1]
}

function sub_3bc5ae64(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_3bc5ae64.length
    return sub_3bc5ae64[arg1]
}

function poolId() payable {
    return poolId
}

function lpPair() payable {
    return lpPairAddress
}

function masterChef() payable {
    return masterChefAddress
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

function rewardToken1() payable {
    return rewardToken1Address
}

function lpToken1() payable {
    return lpToken1Address
}

function sub_8954ffeb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function owner() payable {
    return owner
}

function callFee() payable {
    return callFee
}

function sub_91245cd9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_91245cd9.length
    return sub_91245cd9[arg1]
}

function rewardTokens() payable {
    return rewardTokens
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_d68e1302(?) payable {
    return sub_d68e1302
}

function sub_ec4942da(?) payable {
    return bool(sub_ec4942da)
}

function vault() payable {
    return vaultAddress
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

function sub_f9115453(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = Mask(96, 0, arg1)
    return 1
}

function sub_fd66533e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[arg1 << 248] = uint8(arg2)
    return 1
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
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor8, this.address
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
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor8, this.address
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
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(masterChefAddress)
    call masterChefAddress.emergencyWithdraw(uint256 arg1) with:
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
        args vaultAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9c170452(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardToken1Address = arg1
    address(stor7[stor2]) = arg2
    if ext_code.size(rewardToken1Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0
    call rewardToken1Address with:
       funct uint32(stor7[stor2])
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(rewardToken1Address)
        staticcall rewardToken1Address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(stor7[stor2])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if ext_code.size(rewardToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[516 len 4] = 0
        mem[488 len 0] = 0
        call rewardToken1Address with:
           funct uint32(stor7[stor2])
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            mem[424] = rewardToken1Address
            mem[456] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            sub_2a23ed91.length = 2
            s = 0
            idx = 424
            while 488 > idx:
                sub_2a23ed91[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
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
            mem[ceil32(return_data.size) + 425] = rewardToken1Address
            mem[ceil32(return_data.size) + 457] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            sub_2a23ed91.length = 2
            s = 0
            idx = ceil32(return_data.size) + 425
            while ceil32(return_data.size) + 489 > idx:
                sub_2a23ed91[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
        idx = 2
        while sub_2a23ed91.length > idx:
            sub_2a23ed91[idx] = 0
            idx = idx + 1
            continue 
        stor6[1] = 1
        rewardTokens = 2
        return 1
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size <= 0:
        require ext_code.size(rewardToken1Address)
        staticcall rewardToken1Address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(stor7[stor2])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if ext_code.size(rewardToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 517 len 4] = 0
        mem[ceil32(return_data.size) + 489 len 0] = 0
        call rewardToken1Address with:
           funct uint32(stor7[stor2])
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            mem[ceil32(return_data.size) + 425] = rewardToken1Address
            mem[ceil32(return_data.size) + 457] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            sub_2a23ed91.length = 2
            s = 0
            idx = ceil32(return_data.size) + 425
            while ceil32(return_data.size) + 489 > idx:
                sub_2a23ed91[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
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
            mem[(2 * ceil32(return_data.size)) + 426] = rewardToken1Address
            mem[(2 * ceil32(return_data.size)) + 458] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            sub_2a23ed91.length = 2
            s = 0
            idx = (2 * ceil32(return_data.size)) + 426
            while (2 * ceil32(return_data.size)) + 490 > idx:
                sub_2a23ed91[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
        idx = 2
        while sub_2a23ed91.length > idx:
            sub_2a23ed91[idx] = 0
            idx = idx + 1
            continue 
        stor6[1] = 1
        rewardTokens = 2
        return 1
    require return_data.size >= 32
    if not mem[292]:
        revert with 0, 
                    32,
                    42,
                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(rewardToken1Address)
    staticcall rewardToken1Address.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor7[stor2])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[ceil32(return_data.size) + 383 len 10]
    if ext_code.size(rewardToken1Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(return_data.size) + 517 len 4] = 0
    call rewardToken1Address with:
       funct uint32(stor7[stor2])
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]), uint32(stor7[stor2]), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7[stor2]):
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        mem[ceil32(return_data.size) + 425] = rewardToken1Address
        mem[ceil32(return_data.size) + 457] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        sub_2a23ed91.length = 2
        s = 0
        idx = ceil32(return_data.size) + 425
        while ceil32(return_data.size) + 489 > idx:
            sub_2a23ed91[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while sub_2a23ed91.length > idx:
            sub_2a23ed91[idx] = 0
            idx = idx + 1
            continue 
        stor6[1] = 1
        rewardTokens = 2
        return 1
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
    mem[(2 * ceil32(return_data.size)) + 426] = rewardToken1Address
    mem[(2 * ceil32(return_data.size)) + 458] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    sub_2a23ed91.length = 2
    s = 0
    idx = (2 * ceil32(return_data.size)) + 426
    while (2 * ceil32(return_data.size)) + 490 > idx:
        sub_2a23ed91[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while sub_2a23ed91.length > idx:
        sub_2a23ed91[idx] = 0
        idx = idx + 1
        continue 
    stor6[1] = 1
    rewardTokens = 2
    return 1, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
