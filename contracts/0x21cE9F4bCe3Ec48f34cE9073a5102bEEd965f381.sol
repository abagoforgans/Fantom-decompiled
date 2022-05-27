contract main {




// =====================  Runtime code  =====================


#
#  - stakeLocked(uint256 arg1, uint256 arg2)
#  - migrator_stakeLocked_for(address arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - getReward()
#  - withdrawLocked(bytes32 arg1)
#  - migrator_withdraw_locked(address arg1, bytes32 arg2)
#  - sync()
#
address owner;
address nominatedOwner;
address sub_19ff52fdAddress;
address sub_c69fd222Address;
address rewardsToken1Address;
address stakingTokenAddress;
address rewarderAddress;
address sub_0a25ef4bAddress;
address timelock_address;
address controller_address;
uint256 periodFinish;
uint256 lastUpdateTime;
uint256 lock_max_multiplier;
uint256 sub_b94c4dcb;
uint256 lock_time_min;
uint256 sub_f2a8d349;
uint256 sub_f288baf6;
mapping of struct stor18;
uint256 rewardRate0;
uint256 rewardRate1;
uint256 rewardsDuration;
uint256 sub_c0cd318a;
uint256 sub_5e0ddd52;
uint256 sub_aca4f787;
uint256 sub_e2394218;
uint256 stor26;
uint256 stor27;
mapping of uint256 sub_144e8034;
mapping of uint256 userRewardPerTokenPaid1;
mapping of uint256 sub_c126d1aa;
mapping of uint256 rewards1;
uint256 sub_6cea0b0d;
uint256 totalLiquidityLocked;
uint256 totalCombinedWeight;
mapping of uint256 lockedLiquidityOf;
mapping of uint256 combinedWeightOf;
array of struct stor37;
mapping of uint8 stor38;
mapping of uint8 stor39;
mapping of uint8 stor40;
uint8 sub_fce6fd13;
uint8 stakesUnlocked; offset 8
uint8 withdrawalsPaused; offset 16
uint8 sub_323331ca; offset 24
uint8 stakingPaused; offset 32
uint8 isInitialized; offset 40
uint256 stor41; offset 32
uint256 stor41; offset 24
uint256 stor41; offset 16
uint256 stor41; offset 8
uint256 stor41;

function sub_0a25ef4b(?) payable {
    return sub_0a25ef4bAddress
}

function sub_144e8034(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_144e8034[arg1]
}

function sub_19ff52fd(?) payable {
    return sub_19ff52fdAddress
}

function rewardRate0() payable {
    return rewardRate0
}

function greylist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor40[arg1]))
}

function sub_323331ca(?) payable {
    return bool(sub_323331ca)
}

function combinedWeightOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return combinedWeightOf[address(arg1)]
}

function rewardsDuration() payable {
    return rewardsDuration
}

function isInitialized() payable {
    return bool(isInitialized)
}

function nominatedOwner() payable {
    return nominatedOwner
}

function sub_5e0ddd52(?) payable {
    return sub_5e0ddd52
}

function totalCombinedWeight() payable {
    return totalCombinedWeight
}

function controller_address() payable {
    return controller_address
}

function rewards1(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards1[arg1]
}

function sub_6cea0b0d(?) payable {
    return sub_6cea0b0d
}

function lock_time_min() payable {
    return lock_time_min
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardsToken1() payable {
    return rewardsToken1Address
}

function owner() payable {
    return owner
}

function stakesUnlocked() payable {
    return bool(stakesUnlocked)
}

function sub_9b8c15a8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor39[arg1][arg2])
}

function rewardRate1() payable {
    return rewardRate1
}

function sub_aca4f787(?) payable {
    return sub_aca4f787
}

function sub_b94c4dcb(?) payable {
    return sub_b94c4dcb
}

function stakingPaused() payable {
    return bool(stakingPaused)
}

function sub_c0cd318a(?) payable {
    return sub_c0cd318a
}

function sub_c126d1aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c126d1aa[arg1]
}

function sub_c69fd222(?) payable {
    return sub_c69fd222Address
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function lock_max_multiplier() payable {
    return lock_max_multiplier
}

function lockedLiquidityOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lockedLiquidityOf[address(arg1)]
}

function timelock_address() payable {
    return timelock_address
}

function rewarder() payable {
    return rewarderAddress
}

function totalLiquidityLocked() payable {
    return totalLiquidityLocked
}

function sub_e2394218(?) payable {
    return sub_e2394218
}

function withdrawalsPaused() payable {
    return bool(withdrawalsPaused)
}

function periodFinish() payable {
    return periodFinish
}

function sub_ee89e02f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor38[arg1])
}

function sub_f288baf6(?) payable {
    return sub_f288baf6
}

function sub_f2a8d349(?) payable {
    return sub_f2a8d349
}

function sub_fce6fd13(?) payable {
    return bool(sub_fce6fd13)
}

function userRewardPerTokenPaid1(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid1[arg1]
}

function _fallback() payable {
    revert
}

function stakerDisallowMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor39[msg.sender][address(arg1)] = 0
}

function unlockStakes() payable {
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    Mask(248, 0, stor41.field_8) = Mask(248, 0, not stakesUnlocked)
}

function toggleStaking() payable {
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    Mask(224, 0, stor41.field_32) = Mask(224, 0, not stakingPaused)
}

function toggleWithdrawals() payable {
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    Mask(240, 0, stor41.field_16) = Mask(240, 0, not withdrawalsPaused)
}

function toggleRewardsCollection() payable {
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    Mask(232, 0, stor41.field_24) = Mask(232, 0, not sub_323331ca)
}

function stakerAllowMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor38[address(arg1)]:
        revert with 0, 'Invalid migrator address'
    stor39[msg.sender][address(arg1)] = 1
}

function toggleMigrations() payable {
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    uint256(stor41.field_0) = not sub_fce6fd13 or Mask(248, 8, uint256(stor41.field_0))
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    timelock_address = arg1
}

function addMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    stor38[address(arg1)] = 1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    controller_address = arg1
}

function sub_046e7d3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_19ff52fdAddress = address(arg1)
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function removeMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if bool(stor38[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor38[address(arg1)] = 0
}

function greylistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    uint256(stor40[address(arg1)]) = not uint8(stor40[address(arg1)]) or Mask(248, 8, uint256(stor40[address(arg1)]))
}

function setLockedStakeTimeForMinAndMaxMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if arg1 < 1:
        revert with 0, 'Mul max time must be >= 1'
    if arg2 < 1:
        revert with 0, 'Mul min time must be >= 1'
    sub_b94c4dcb = arg1
    lock_time_min = arg2
    emit LockedStakeTimeForMaxMultiplier(arg1);
    emit LockedStakeMinTime(arg2);
}

function initializeDefault() payable {
    if owner != msg.sender:
        if timelock_address != msg.sender:
            if controller_address != msg.sender:
                revert with 0, 'Not own, tlk, or ctrlr'
    if isInitialized:
        revert with 0, 'Already initialized'
    isInitialized = 1
    if rewarderAddress:
        require ext_code.size(rewarderAddress)
        call rewarderAddress.distributeReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_6cea0b0d = block.timestamp
    emit DefaultInitialization()
}

function setMultipliers(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if arg1 < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mult must be >= MULTIPLIER_PRECISION'
    if arg3 <= 0:
        revert with 0, 'veFXS pct max must be >= 0'
    lock_max_multiplier = arg1
    sub_f288baf6 = arg2
    sub_f2a8d349 = arg3
    emit MaxVeFXSMultiplier(arg2);
    emit LockedStakeMaxMultiplierUpdated(lock_max_multiplier);
    emit veFXSPerFraxForMaxBoostUpdated(sub_f2a8d349);
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not sub_fce6fd13:
        if stakingTokenAddress == arg1:
            revert with 0, 'Not in migration'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Recovered(address(arg1), arg2);
}

function lockedStakesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 37
    mem[64] = (32 * stor37[address(arg1)].field_0) + 128
    mem[96] = stor37[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor37[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 37)
        _15 = mem[64]
        mem[64] = mem[64] + 160
        mem[_15] = stor37[address(arg1)][idx].field_0
        mem[_15 + 32] = stor37[address(arg1)][idx].field_256
        mem[_15 + 64] = stor37[address(arg1)][idx].field_512
        mem[_15 + 96] = stor37[address(arg1)][idx].field_768
        mem[_15 + 128] = stor37[address(arg1)][idx].field_1024
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _17:
        _25 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_25 + 32]
        mem[t + 64] = mem[_25 + 64]
        mem[t + 96] = mem[_25 + 96]
        mem[t + 128] = mem[_25 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _16 + (160 * _17) + -mem[64] + 64
}

function getRewardForDuration() payable {
    if not rewardRate0:
        if not rewardRate1:
            return 0
        if rewardRate1 and rewardsDuration > -1 / rewardRate1:
            revert with 'NH{q', 17
        if not rewardRate1:
            revert with 'NH{q', 18
        if rewardRate1 * rewardsDuration / rewardRate1 != rewardsDuration:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return 0, rewardRate1 * rewardsDuration
    if rewardRate0 and rewardsDuration > -1 / rewardRate0:
        revert with 'NH{q', 17
    if not rewardRate0:
        revert with 'NH{q', 18
    if rewardRate0 * rewardsDuration / rewardRate0 != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not rewardRate1:
        return rewardRate0 * rewardsDuration, 0
    if rewardRate1 and rewardsDuration > -1 / rewardRate1:
        revert with 'NH{q', 17
    if not rewardRate1:
        revert with 'NH{q', 18
    if rewardRate1 * rewardsDuration / rewardRate1 != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return rewardRate0 * rewardsDuration, rewardRate1 * rewardsDuration
}

function lockMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 10^18 > lock_max_multiplier:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if lock_max_multiplier < 10^18:
        revert with 'NH{q', 17
    if not arg1:
        if not sub_b94c4dcb:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^18 > !(0 / sub_b94c4dcb):
            revert with 'NH{q', 17
        if (0 / sub_b94c4dcb) + 10^18 < 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if (0 / sub_b94c4dcb) + 10^18 <= lock_max_multiplier:
            return ((0 / sub_b94c4dcb) + 10^18)
    else:
        if arg1 and lock_max_multiplier - 10^18 > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if (-1 * 10^18 * arg1) + (lock_max_multiplier * arg1) / arg1 != lock_max_multiplier - 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not sub_b94c4dcb:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^18 > !((-1 * 10^18 * arg1) + (lock_max_multiplier * arg1) / sub_b94c4dcb):
            revert with 'NH{q', 17
        if ((-1 * 10^18 * arg1) + (lock_max_multiplier * arg1) / sub_b94c4dcb) + 10^18 < 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if ((-1 * 10^18 * arg1) + (lock_max_multiplier * arg1) / sub_b94c4dcb) + 10^18 <= lock_max_multiplier:
            return (((-1 * 10^18 * arg1) + (lock_max_multiplier * arg1) / sub_b94c4dcb) + 10^18)
    return lock_max_multiplier
}

function fraxPerLPToken() payable {
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.getBasset(address arg1) with:
            gas gas_remaining wei
           args sub_0a25ef4bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    require ext_call.return_data[96] < 8
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[176 len 16]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[176 len 16] and 10^18 > -1 / ext_call.return_data[176 len 16]:
        revert with 'NH{q', 17
    if not ext_call.return_data[176 len 16]:
        revert with 'NH{q', 18
    if 10^18 * ext_call.return_data[176 len 16] / ext_call.return_data[176 len 16] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0])
}

function userStakedFrax(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.getBasset(address arg1) with:
            gas gas_remaining wei
           args sub_0a25ef4bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    require ext_call.return_data[96] < 8
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[176 len 16]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0]:
            return 0
        if 0 / ext_call.return_data[0] and lockedLiquidityOf[address(arg1)] > -1 / 0 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 0 / ext_call.return_data[0] != lockedLiquidityOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        return (0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18)
    if ext_call.return_data[176 len 16] and 10^18 > -1 / ext_call.return_data[176 len 16]:
        revert with 'NH{q', 17
    if not ext_call.return_data[176 len 16]:
        revert with 'NH{q', 18
    if 10^18 * ext_call.return_data[176 len 16] / ext_call.return_data[176 len 16] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
        return 0
    if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] and lockedLiquidityOf[address(arg1)] > -1 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] != lockedLiquidityOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18)
}

function minVeFXSForMaxBoost(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.getBasset(address arg1) with:
            gas gas_remaining wei
           args sub_0a25ef4bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    require ext_call.return_data[96] < 8
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[176 len 16]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0]:
            return 0
        if 0 / ext_call.return_data[0] and lockedLiquidityOf[address(arg1)] > -1 / 0 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 0 / ext_call.return_data[0] != lockedLiquidityOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            return 0
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 and sub_f2a8d349 > -1 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 != sub_f2a8d349:
            revert with 0, 'SafeMath: multiplication overflow'
        return (0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18)
    if ext_call.return_data[176 len 16] and 10^18 > -1 / ext_call.return_data[176 len 16]:
        revert with 'NH{q', 17
    if not ext_call.return_data[176 len 16]:
        revert with 'NH{q', 18
    if 10^18 * ext_call.return_data[176 len 16] / ext_call.return_data[176 len 16] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
        return 0
    if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] and lockedLiquidityOf[address(arg1)] > -1 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] != lockedLiquidityOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
        return 0
    if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 and sub_f2a8d349 > -1 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
        revert with 'NH{q', 17
    if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
        revert with 'NH{q', 18
    if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 != sub_f2a8d349:
        revert with 0, 'SafeMath: multiplication overflow'
    return (10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18)
}

function veFXSMultiplier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_19ff52fdAddress:
        return 0
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.getBasset(address arg1) with:
            gas gas_remaining wei
           args sub_0a25ef4bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    require ext_call.return_data[96] < 8
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[176 len 16]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0]:
            return 0
        if 0 / ext_call.return_data[0] and lockedLiquidityOf[address(arg1)] > -1 / 0 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 0 / ext_call.return_data[0] != lockedLiquidityOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            return 0
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 and sub_f2a8d349 > -1 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 != sub_f2a8d349:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
            return 0
        require ext_code.size(sub_19ff52fdAddress)
        staticcall sub_19ff52fdAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                if 0 <= sub_f288baf6:
                    return 0
            else:
                if 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 and sub_f288baf6 > -1 / 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 17
                if not 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 18
                if 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 != sub_f288baf6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 <= sub_f288baf6:
                    return (0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18)
        else:
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                if 0 <= sub_f288baf6:
                    return 0
            else:
                if 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 and sub_f288baf6 > -1 / 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 18
                if 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 != sub_f288baf6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 <= sub_f288baf6:
                    return (10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18)
    else:
        if ext_call.return_data[176 len 16] and 10^18 > -1 / ext_call.return_data[176 len 16]:
            revert with 'NH{q', 17
        if not ext_call.return_data[176 len 16]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[176 len 16] / ext_call.return_data[176 len 16] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
            return 0
        if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] and lockedLiquidityOf[address(arg1)] > -1 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] != lockedLiquidityOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            return 0
        if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 and sub_f2a8d349 > -1 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 17
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 18
        if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 != sub_f2a8d349:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
            return 0
        require ext_code.size(sub_19ff52fdAddress)
        staticcall sub_19ff52fdAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                if 0 <= sub_f288baf6:
                    return 0
            else:
                if 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 and sub_f288baf6 > -1 / 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 17
                if not 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 18
                if 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 != sub_f288baf6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 <= sub_f288baf6:
                    return (0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18)
        else:
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                if 0 <= sub_f288baf6:
                    return 0
            else:
                if 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 and sub_f288baf6 > -1 / 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 18
                if 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 != sub_f288baf6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 <= sub_f288baf6:
                    return (10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18)
    return sub_f288baf6
}

function rewardPerToken() payable {
    if 0 == totalLiquidityLocked:
        return stor26, stor27
    if not totalCombinedWeight:
        return stor26, stor27
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if not block.timestamp - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor26 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor26 + (0 / totalCombinedWeight) < stor26:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp < lastUpdateTime:
                    revert with 'NH{q', 17
                if not block.timestamp - lastUpdateTime:
                    if not totalCombinedWeight:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor27 > !(0 / totalCombinedWeight):
                        revert with 'NH{q', 17
                    if stor27 + (0 / totalCombinedWeight) < stor27:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
                if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 17
                if not block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    if not totalCombinedWeight:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor27 > !(0 / totalCombinedWeight):
                        revert with 'NH{q', 17
                    if stor27 + (0 / totalCombinedWeight) < stor27:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
                if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    revert with 'NH{q', 17
                if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    revert with 'NH{q', 18
                if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), 
                       stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if not periodFinish - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
            if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if not periodFinish - lastUpdateTime:
                revert with 'NH{q', 18
            if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
            if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + (0 / totalCombinedWeight), 
                   stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
        if block.timestamp - lastUpdateTime and rewardRate0 > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if not block.timestamp - lastUpdateTime:
            revert with 'NH{q', 18
        if (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0) / block.timestamp - lastUpdateTime != rewardRate0:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor26 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor26 + (0 / totalCombinedWeight) < stor26:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp < lastUpdateTime:
                    revert with 'NH{q', 17
                if not block.timestamp - lastUpdateTime:
                    if not totalCombinedWeight:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor27 > !(0 / totalCombinedWeight):
                        revert with 'NH{q', 17
                    if stor27 + (0 / totalCombinedWeight) < stor27:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
                if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 17
                if not block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    if not totalCombinedWeight:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor27 > !(0 / totalCombinedWeight):
                        revert with 'NH{q', 17
                    if stor27 + (0 / totalCombinedWeight) < stor27:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
                if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    revert with 'NH{q', 17
                if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    revert with 'NH{q', 18
                if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), 
                       stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if not periodFinish - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
            if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if not periodFinish - lastUpdateTime:
                revert with 'NH{q', 18
            if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
            if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + (0 / totalCombinedWeight), 
                   stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
        if (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0) and 10^18 > -1 / (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0):
            revert with 'NH{q', 17
        if not (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0):
            revert with 'NH{q', 18
        if (10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor26 > !((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < stor26:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
                       stor27 + (0 / totalCombinedWeight)
            if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                revert with 'NH{q', 18
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
                       stor27 + (0 / totalCombinedWeight)
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
                   stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
        if lastUpdateTime > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if periodFinish < lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
                   stor27 + (0 / totalCombinedWeight)
        if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            revert with 'NH{q', 18
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
                   stor27 + (0 / totalCombinedWeight)
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 17
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 18
        if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        return stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
               stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if periodFinish < lastUpdateTime:
        revert with 'NH{q', 17
    if not periodFinish - lastUpdateTime:
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor26 > !(0 / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor26 + (0 / totalCombinedWeight) < stor26:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
            if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                revert with 'NH{q', 18
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + (0 / totalCombinedWeight), 
                   stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
        if lastUpdateTime > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if periodFinish < lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
        if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            revert with 'NH{q', 18
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 17
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 18
        if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        return stor26 + (0 / totalCombinedWeight), 
               stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
    if periodFinish - lastUpdateTime and rewardRate0 > -1 / periodFinish - lastUpdateTime:
        revert with 'NH{q', 17
    if not periodFinish - lastUpdateTime:
        revert with 'NH{q', 18
    if (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0) / periodFinish - lastUpdateTime != rewardRate0:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0):
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor26 > !(0 / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor26 + (0 / totalCombinedWeight) < stor26:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
            if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                revert with 'NH{q', 18
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + (0 / totalCombinedWeight), 
                   stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
        if lastUpdateTime > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if periodFinish < lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
        if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            revert with 'NH{q', 18
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + (0 / totalCombinedWeight), stor27 + (0 / totalCombinedWeight)
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 17
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 18
        if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        return stor26 + (0 / totalCombinedWeight), 
               stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
    if (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0) and 10^18 > -1 / (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0):
        revert with 'NH{q', 17
    if not (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0):
        revert with 'NH{q', 18
    if (10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalCombinedWeight:
        revert with 0, 'SafeMath: division by zero', 0
    if stor26 > !((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
        revert with 'NH{q', 17
    if stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < stor26:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if not block.timestamp - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
                   stor27 + (0 / totalCombinedWeight)
        if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if not block.timestamp - lastUpdateTime:
            revert with 'NH{q', 18
        if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            return stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
                   stor27 + (0 / totalCombinedWeight)
        if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 17
        if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 18
        if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        return stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
               stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if periodFinish < lastUpdateTime:
        revert with 'NH{q', 17
    if not periodFinish - lastUpdateTime:
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !(0 / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + (0 / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        return stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
               stor27 + (0 / totalCombinedWeight)
    if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
        revert with 'NH{q', 17
    if not periodFinish - lastUpdateTime:
        revert with 'NH{q', 18
    if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !(0 / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + (0 / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        return stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
               stor27 + (0 / totalCombinedWeight)
    if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
        revert with 'NH{q', 17
    if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
        revert with 'NH{q', 18
    if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalCombinedWeight:
        revert with 0, 'SafeMath: division by zero', 0
    if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
        revert with 'NH{q', 17
    if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
        revert with 0, 'SafeMath: addition overflow'
    return stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight), 
           stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight)
}

function calcCurCombinedWeight(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_19ff52fdAddress:
        if 0 > !stor18[address(arg1)].field_0:
            revert with 'NH{q', 17
        if stor18[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[64] = 160
        idx = 0
        while idx < stor37[address(arg1)].field_0:
            mem[32] = 37
            if idx >= stor37[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 37)
            _847 = mem[64]
            mem[64] = mem[64] + 160
            mem[_847] = stor37[address(arg1)][idx].field_0
            mem[_847 + 32] = stor37[address(arg1)][idx].field_256
            mem[_847 + 64] = stor37[address(arg1)][idx].field_512
            mem[_847 + 96] = stor37[address(arg1)][idx].field_768
            mem[_847 + 128] = stor37[address(arg1)][idx].field_1024
            if stor37[address(arg1)][idx].field_768 > block.timestamp:
                if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                    revert with 'NH{q', 17
                if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not stor37[address(arg1)][idx].field_512:
                    _1133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1133] = 26
                    mem[_1133 + 32] = 'SafeMath: division by zero'
                else:
                    if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                        revert with 'NH{q', 17
                    if not stor37[address(arg1)][idx].field_512:
                        revert with 'NH{q', 18
                    if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1248 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1248] = 26
                    mem[_1248 + 32] = 'SafeMath: division by zero'
                    if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                        revert with 'NH{q', 17
                    if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if 10^18 > !stor18[address(arg1)].field_1:
                    revert with 'NH{q', 17
                if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if not stor37[address(arg1)][idx].field_512:
                    _1156 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1156] = 26
                    mem[_1156 + 32] = 'SafeMath: division by zero'
                else:
                    if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                        revert with 'NH{q', 17
                    if not stor37[address(arg1)][idx].field_512:
                        revert with 'NH{q', 18
                    if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1294 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1294] = 26
                    mem[_1294 + 32] = 'SafeMath: division by zero'
                    if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                        revert with 'NH{q', 17
                    if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 37
            idx = idx + 1
            continue 
        return combinedWeightOf[address(arg1)], 0, 0
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.getBasset(address arg1) with:
            gas gas_remaining wei
           args sub_0a25ef4bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    require ext_call.return_data[96] < 8
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[176 len 16]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0]:
            if 0 > !stor18[address(arg1)].field_0:
                revert with 'NH{q', 17
            if stor18[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[64] = (2 * ceil32(return_data.size)) + 544
            idx = 0
            while idx < stor37[address(arg1)].field_0:
                mem[32] = 37
                if idx >= stor37[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 37)
                _957 = mem[64]
                mem[64] = mem[64] + 160
                mem[_957] = stor37[address(arg1)][idx].field_0
                mem[_957 + 32] = stor37[address(arg1)][idx].field_256
                mem[_957 + 64] = stor37[address(arg1)][idx].field_512
                mem[_957 + 96] = stor37[address(arg1)][idx].field_768
                mem[_957 + 128] = stor37[address(arg1)][idx].field_1024
                if stor37[address(arg1)][idx].field_768 > block.timestamp:
                    if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1155] = 26
                        mem[_1155 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1292] = 26
                        mem[_1292 + 32] = 'SafeMath: division by zero'
                        if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if 10^18 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1178] = 26
                        mem[_1178 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1316] = 26
                        mem[_1316 + 32] = 'SafeMath: division by zero'
                        if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 37
                idx = idx + 1
                continue 
            return combinedWeightOf[address(arg1)], 0, 0
        if 0 / ext_call.return_data[0] and lockedLiquidityOf[address(arg1)] > -1 / 0 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 0 / ext_call.return_data[0] != lockedLiquidityOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            if 0 > !stor18[address(arg1)].field_0:
                revert with 'NH{q', 17
            if stor18[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[64] = (2 * ceil32(return_data.size)) + 544
            idx = 0
            while idx < stor37[address(arg1)].field_0:
                mem[32] = 37
                if idx >= stor37[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 37)
                _952 = mem[64]
                mem[64] = mem[64] + 160
                mem[_952] = stor37[address(arg1)][idx].field_0
                mem[_952 + 32] = stor37[address(arg1)][idx].field_256
                mem[_952 + 64] = stor37[address(arg1)][idx].field_512
                mem[_952 + 96] = stor37[address(arg1)][idx].field_768
                mem[_952 + 128] = stor37[address(arg1)][idx].field_1024
                if stor37[address(arg1)][idx].field_768 > block.timestamp:
                    if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1154] = 26
                        mem[_1154 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1290] = 26
                        mem[_1290 + 32] = 'SafeMath: division by zero'
                        if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if 10^18 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1177 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1177] = 26
                        mem[_1177 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1315] = 26
                        mem[_1315 + 32] = 'SafeMath: division by zero'
                        if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 37
                idx = idx + 1
                continue 
            return combinedWeightOf[address(arg1)], 0, 0
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 and sub_f2a8d349 > -1 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 17
        if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 18
        if 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 != sub_f2a8d349:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
            if 0 > !stor18[address(arg1)].field_0:
                revert with 'NH{q', 17
            if stor18[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[64] = (2 * ceil32(return_data.size)) + 544
            idx = 0
            while idx < stor37[address(arg1)].field_0:
                mem[32] = 37
                if idx >= stor37[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 37)
                _907 = mem[64]
                mem[64] = mem[64] + 160
                mem[_907] = stor37[address(arg1)][idx].field_0
                mem[_907 + 32] = stor37[address(arg1)][idx].field_256
                mem[_907 + 64] = stor37[address(arg1)][idx].field_512
                mem[_907 + 96] = stor37[address(arg1)][idx].field_768
                mem[_907 + 128] = stor37[address(arg1)][idx].field_1024
                if stor37[address(arg1)][idx].field_768 > block.timestamp:
                    if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1145] = 26
                        mem[_1145 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1272] = 26
                        mem[_1272 + 32] = 'SafeMath: division by zero'
                        if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if 10^18 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1168 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1168] = 26
                        mem[_1168 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1306 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1306] = 26
                        mem[_1306 + 32] = 'SafeMath: division by zero'
                        if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 37
                idx = idx + 1
                continue 
            return combinedWeightOf[address(arg1)], 0, 0
        require ext_code.size(sub_19ff52fdAddress)
        staticcall sub_19ff52fdAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                if 0 <= sub_f288baf6:
                    if 0 > !stor18[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = (4 * ceil32(return_data.size)) + 672
                    idx = 0
                    while idx < stor37[address(arg1)].field_0:
                        mem[32] = 37
                        if idx >= stor37[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 37)
                        _942 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_942] = stor37[address(arg1)][idx].field_0
                        mem[_942 + 32] = stor37[address(arg1)][idx].field_256
                        mem[_942 + 64] = stor37[address(arg1)][idx].field_512
                        mem[_942 + 96] = stor37[address(arg1)][idx].field_768
                        mem[_942 + 128] = stor37[address(arg1)][idx].field_1024
                        if stor37[address(arg1)][idx].field_768 > block.timestamp:
                            if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                                revert with 'NH{q', 17
                            if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1152 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1152] = 26
                                mem[_1152 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1286 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1286] = 26
                                mem[_1286 + 32] = 'SafeMath: division by zero'
                                if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 > !stor18[address(arg1)].field_1:
                                revert with 'NH{q', 17
                            if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1175 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1175] = 26
                                mem[_1175 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1313 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1313] = 26
                                mem[_1313 + 32] = 'SafeMath: division by zero'
                                if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 37
                        idx = idx + 1
                        continue 
                    return combinedWeightOf[address(arg1)], 0, 0
                if sub_f288baf6 > !stor18[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if sub_f288baf6 + stor18[address(arg1)].field_0 < sub_f288baf6:
                    revert with 0, 'SafeMath: addition overflow'
                mem[64] = (4 * ceil32(return_data.size)) + 672
                idx = 0
                while idx < stor37[address(arg1)].field_0:
                    mem[32] = 37
                    if idx >= stor37[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 37)
                    _947 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_947] = stor37[address(arg1)][idx].field_0
                    mem[_947 + 32] = stor37[address(arg1)][idx].field_256
                    mem[_947 + 64] = stor37[address(arg1)][idx].field_512
                    mem[_947 + 96] = stor37[address(arg1)][idx].field_768
                    mem[_947 + 128] = stor37[address(arg1)][idx].field_1024
                    if stor37[address(arg1)][idx].field_768 > block.timestamp:
                        if stor37[address(arg1)][idx].field_1024 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1153 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1153] = 26
                            mem[_1153 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1288 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1288] = 26
                            mem[_1288 + 32] = 'SafeMath: division by zero'
                            if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1176] = 26
                            mem[_1176 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1314 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1314] = 26
                            mem[_1314 + 32] = 'SafeMath: division by zero'
                            if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 37
                    idx = idx + 1
                    continue 
            else:
                if 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 and sub_f288baf6 > -1 / 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 17
                if not 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 18
                if 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 != sub_f288baf6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 <= sub_f288baf6:
                    if 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 > !stor18[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if (0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 < 0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = (4 * ceil32(return_data.size)) + 672
                    idx = 0
                    while idx < stor37[address(arg1)].field_0:
                        mem[32] = 37
                        if idx >= stor37[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 37)
                        _932 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_932] = stor37[address(arg1)][idx].field_0
                        mem[_932 + 32] = stor37[address(arg1)][idx].field_256
                        mem[_932 + 64] = stor37[address(arg1)][idx].field_512
                        mem[_932 + 96] = stor37[address(arg1)][idx].field_768
                        mem[_932 + 128] = stor37[address(arg1)][idx].field_1024
                        if stor37[address(arg1)][idx].field_768 > block.timestamp:
                            if stor37[address(arg1)][idx].field_1024 > !((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                revert with 'NH{q', 17
                            if stor37[address(arg1)][idx].field_1024 + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1150 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1150] = 26
                                mem[_1150 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1282 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1282] = 26
                                mem[_1282 + 32] = 'SafeMath: division by zero'
                                if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 > !((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                revert with 'NH{q', 17
                            if ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1173 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1173] = 26
                                mem[_1173 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (10^18 * stor37[address(arg1)][idx].field_512) + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1311 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1311] = 26
                                mem[_1311 + 32] = 'SafeMath: division by zero'
                                if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (10^18 * stor37[address(arg1)][idx].field_512) + ((0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 37
                        idx = idx + 1
                        continue 
                    return combinedWeightOf[address(arg1)], 
                           0 / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18,
                           0
                if sub_f288baf6 > !stor18[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if sub_f288baf6 + stor18[address(arg1)].field_0 < sub_f288baf6:
                    revert with 0, 'SafeMath: addition overflow'
                mem[64] = (4 * ceil32(return_data.size)) + 672
                idx = 0
                while idx < stor37[address(arg1)].field_0:
                    mem[32] = 37
                    if idx >= stor37[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 37)
                    _937 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_937] = stor37[address(arg1)][idx].field_0
                    mem[_937 + 32] = stor37[address(arg1)][idx].field_256
                    mem[_937 + 64] = stor37[address(arg1)][idx].field_512
                    mem[_937 + 96] = stor37[address(arg1)][idx].field_768
                    mem[_937 + 128] = stor37[address(arg1)][idx].field_1024
                    if stor37[address(arg1)][idx].field_768 > block.timestamp:
                        if stor37[address(arg1)][idx].field_1024 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1151 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1151] = 26
                            mem[_1151 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1284 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1284] = 26
                            mem[_1284 + 32] = 'SafeMath: division by zero'
                            if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1174 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1174] = 26
                            mem[_1174 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1312 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1312] = 26
                            mem[_1312 + 32] = 'SafeMath: division by zero'
                            if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 37
                    idx = idx + 1
                    continue 
        else:
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                if 0 <= sub_f288baf6:
                    if 0 > !stor18[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = (4 * ceil32(return_data.size)) + 672
                    idx = 0
                    while idx < stor37[address(arg1)].field_0:
                        mem[32] = 37
                        if idx >= stor37[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 37)
                        _922 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_922] = stor37[address(arg1)][idx].field_0
                        mem[_922 + 32] = stor37[address(arg1)][idx].field_256
                        mem[_922 + 64] = stor37[address(arg1)][idx].field_512
                        mem[_922 + 96] = stor37[address(arg1)][idx].field_768
                        mem[_922 + 128] = stor37[address(arg1)][idx].field_1024
                        if stor37[address(arg1)][idx].field_768 > block.timestamp:
                            if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                                revert with 'NH{q', 17
                            if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1148 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1148] = 26
                                mem[_1148 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1278 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1278] = 26
                                mem[_1278 + 32] = 'SafeMath: division by zero'
                                if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 > !stor18[address(arg1)].field_1:
                                revert with 'NH{q', 17
                            if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1171 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1171] = 26
                                mem[_1171 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1309 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1309] = 26
                                mem[_1309 + 32] = 'SafeMath: division by zero'
                                if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 37
                        idx = idx + 1
                        continue 
                    return combinedWeightOf[address(arg1)], 0, 0
                if sub_f288baf6 > !stor18[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if sub_f288baf6 + stor18[address(arg1)].field_0 < sub_f288baf6:
                    revert with 0, 'SafeMath: addition overflow'
                mem[64] = (4 * ceil32(return_data.size)) + 672
                idx = 0
                while idx < stor37[address(arg1)].field_0:
                    mem[32] = 37
                    if idx >= stor37[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 37)
                    _927 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_927] = stor37[address(arg1)][idx].field_0
                    mem[_927 + 32] = stor37[address(arg1)][idx].field_256
                    mem[_927 + 64] = stor37[address(arg1)][idx].field_512
                    mem[_927 + 96] = stor37[address(arg1)][idx].field_768
                    mem[_927 + 128] = stor37[address(arg1)][idx].field_1024
                    if stor37[address(arg1)][idx].field_768 > block.timestamp:
                        if stor37[address(arg1)][idx].field_1024 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1149 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1149] = 26
                            mem[_1149 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1280 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1280] = 26
                            mem[_1280 + 32] = 'SafeMath: division by zero'
                            if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1172 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1172] = 26
                            mem[_1172 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1310 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1310] = 26
                            mem[_1310 + 32] = 'SafeMath: division by zero'
                            if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 37
                    idx = idx + 1
                    continue 
            else:
                if 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 and sub_f288baf6 > -1 / 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 18
                if 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 != sub_f288baf6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 <= sub_f288baf6:
                    if 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 > !stor18[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if (10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 < 10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = (4 * ceil32(return_data.size)) + 672
                    idx = 0
                    while idx < stor37[address(arg1)].field_0:
                        mem[32] = 37
                        if idx >= stor37[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 37)
                        _912 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_912] = stor37[address(arg1)][idx].field_0
                        mem[_912 + 32] = stor37[address(arg1)][idx].field_256
                        mem[_912 + 64] = stor37[address(arg1)][idx].field_512
                        mem[_912 + 96] = stor37[address(arg1)][idx].field_768
                        mem[_912 + 128] = stor37[address(arg1)][idx].field_1024
                        if stor37[address(arg1)][idx].field_768 > block.timestamp:
                            if stor37[address(arg1)][idx].field_1024 > !((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                revert with 'NH{q', 17
                            if stor37[address(arg1)][idx].field_1024 + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1146 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1146] = 26
                                mem[_1146 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1274 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1274] = 26
                                mem[_1274 + 32] = 'SafeMath: division by zero'
                                if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 > !((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                revert with 'NH{q', 17
                            if ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1169 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1169] = 26
                                mem[_1169 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (10^18 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1307 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1307] = 26
                                mem[_1307 + 32] = 'SafeMath: division by zero'
                                if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (10^18 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 37
                        idx = idx + 1
                        continue 
                    return combinedWeightOf[address(arg1)], 
                           10^18 * ext_call.return_data[0] / 0 / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18,
                           0
                if sub_f288baf6 > !stor18[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if sub_f288baf6 + stor18[address(arg1)].field_0 < sub_f288baf6:
                    revert with 0, 'SafeMath: addition overflow'
                mem[64] = (4 * ceil32(return_data.size)) + 672
                idx = 0
                while idx < stor37[address(arg1)].field_0:
                    mem[32] = 37
                    if idx >= stor37[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 37)
                    _917 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_917] = stor37[address(arg1)][idx].field_0
                    mem[_917 + 32] = stor37[address(arg1)][idx].field_256
                    mem[_917 + 64] = stor37[address(arg1)][idx].field_512
                    mem[_917 + 96] = stor37[address(arg1)][idx].field_768
                    mem[_917 + 128] = stor37[address(arg1)][idx].field_1024
                    if stor37[address(arg1)][idx].field_768 > block.timestamp:
                        if stor37[address(arg1)][idx].field_1024 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1147 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1147] = 26
                            mem[_1147 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1276] = 26
                            mem[_1276 + 32] = 'SafeMath: division by zero'
                            if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1170 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1170] = 26
                            mem[_1170 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1308 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1308] = 26
                            mem[_1308 + 32] = 'SafeMath: division by zero'
                            if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 37
                    idx = idx + 1
                    continue 
    else:
        if ext_call.return_data[176 len 16] and 10^18 > -1 / ext_call.return_data[176 len 16]:
            revert with 'NH{q', 17
        if not ext_call.return_data[176 len 16]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[176 len 16] / ext_call.return_data[176 len 16] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
            if 0 > !stor18[address(arg1)].field_0:
                revert with 'NH{q', 17
            if stor18[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[64] = (2 * ceil32(return_data.size)) + 544
            idx = 0
            while idx < stor37[address(arg1)].field_0:
                mem[32] = 37
                if idx >= stor37[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 37)
                _902 = mem[64]
                mem[64] = mem[64] + 160
                mem[_902] = stor37[address(arg1)][idx].field_0
                mem[_902 + 32] = stor37[address(arg1)][idx].field_256
                mem[_902 + 64] = stor37[address(arg1)][idx].field_512
                mem[_902 + 96] = stor37[address(arg1)][idx].field_768
                mem[_902 + 128] = stor37[address(arg1)][idx].field_1024
                if stor37[address(arg1)][idx].field_768 > block.timestamp:
                    if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1144 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1144] = 26
                        mem[_1144 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1270] = 26
                        mem[_1270 + 32] = 'SafeMath: division by zero'
                        if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if 10^18 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1167] = 26
                        mem[_1167 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1305 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1305] = 26
                        mem[_1305 + 32] = 'SafeMath: division by zero'
                        if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 37
                idx = idx + 1
                continue 
            return combinedWeightOf[address(arg1)], 0, 0
        if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] and lockedLiquidityOf[address(arg1)] > -1 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] != lockedLiquidityOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            if 0 > !stor18[address(arg1)].field_0:
                revert with 'NH{q', 17
            if stor18[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[64] = (2 * ceil32(return_data.size)) + 544
            idx = 0
            while idx < stor37[address(arg1)].field_0:
                mem[32] = 37
                if idx >= stor37[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 37)
                _897 = mem[64]
                mem[64] = mem[64] + 160
                mem[_897] = stor37[address(arg1)][idx].field_0
                mem[_897 + 32] = stor37[address(arg1)][idx].field_256
                mem[_897 + 64] = stor37[address(arg1)][idx].field_512
                mem[_897 + 96] = stor37[address(arg1)][idx].field_768
                mem[_897 + 128] = stor37[address(arg1)][idx].field_1024
                if stor37[address(arg1)][idx].field_768 > block.timestamp:
                    if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1143] = 26
                        mem[_1143 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1268 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1268] = 26
                        mem[_1268 + 32] = 'SafeMath: division by zero'
                        if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if 10^18 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1166 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1166] = 26
                        mem[_1166 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1304 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1304] = 26
                        mem[_1304 + 32] = 'SafeMath: division by zero'
                        if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 37
                idx = idx + 1
                continue 
            return combinedWeightOf[address(arg1)], 0, 0
        if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 and sub_f2a8d349 > -1 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 17
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18:
            revert with 'NH{q', 18
        if 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 != sub_f2a8d349:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
            if 0 > !stor18[address(arg1)].field_0:
                revert with 'NH{q', 17
            if stor18[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[64] = (2 * ceil32(return_data.size)) + 544
            idx = 0
            while idx < stor37[address(arg1)].field_0:
                mem[32] = 37
                if idx >= stor37[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 37)
                _852 = mem[64]
                mem[64] = mem[64] + 160
                mem[_852] = stor37[address(arg1)][idx].field_0
                mem[_852 + 32] = stor37[address(arg1)][idx].field_256
                mem[_852 + 64] = stor37[address(arg1)][idx].field_512
                mem[_852 + 96] = stor37[address(arg1)][idx].field_768
                mem[_852 + 128] = stor37[address(arg1)][idx].field_1024
                if stor37[address(arg1)][idx].field_768 > block.timestamp:
                    if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1134 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1134] = 26
                        mem[_1134 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1250 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1250] = 26
                        mem[_1250 + 32] = 'SafeMath: division by zero'
                        if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if 10^18 > !stor18[address(arg1)].field_1:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not stor37[address(arg1)][idx].field_512:
                        _1157 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1157] = 26
                        mem[_1157 + 32] = 'SafeMath: division by zero'
                    else:
                        if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 17
                        if not stor37[address(arg1)][idx].field_512:
                            revert with 'NH{q', 18
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1295 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1295] = 26
                        mem[_1295 + 32] = 'SafeMath: division by zero'
                        if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                            revert with 'NH{q', 17
                        if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 37
                idx = idx + 1
                continue 
            return combinedWeightOf[address(arg1)], 0, 0
        require ext_code.size(sub_19ff52fdAddress)
        staticcall sub_19ff52fdAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                if 0 <= sub_f288baf6:
                    if 0 > !stor18[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = (4 * ceil32(return_data.size)) + 672
                    idx = 0
                    while idx < stor37[address(arg1)].field_0:
                        mem[32] = 37
                        if idx >= stor37[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 37)
                        _887 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_887] = stor37[address(arg1)][idx].field_0
                        mem[_887 + 32] = stor37[address(arg1)][idx].field_256
                        mem[_887 + 64] = stor37[address(arg1)][idx].field_512
                        mem[_887 + 96] = stor37[address(arg1)][idx].field_768
                        mem[_887 + 128] = stor37[address(arg1)][idx].field_1024
                        if stor37[address(arg1)][idx].field_768 > block.timestamp:
                            if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                                revert with 'NH{q', 17
                            if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1141 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1141] = 26
                                mem[_1141 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1264 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1264] = 26
                                mem[_1264 + 32] = 'SafeMath: division by zero'
                                if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 > !stor18[address(arg1)].field_1:
                                revert with 'NH{q', 17
                            if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1164 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1164] = 26
                                mem[_1164 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1302 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1302] = 26
                                mem[_1302 + 32] = 'SafeMath: division by zero'
                                if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 37
                        idx = idx + 1
                        continue 
                    return combinedWeightOf[address(arg1)], 0, 0
                if sub_f288baf6 > !stor18[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if sub_f288baf6 + stor18[address(arg1)].field_0 < sub_f288baf6:
                    revert with 0, 'SafeMath: addition overflow'
                mem[64] = (4 * ceil32(return_data.size)) + 672
                idx = 0
                while idx < stor37[address(arg1)].field_0:
                    mem[32] = 37
                    if idx >= stor37[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 37)
                    _892 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_892] = stor37[address(arg1)][idx].field_0
                    mem[_892 + 32] = stor37[address(arg1)][idx].field_256
                    mem[_892 + 64] = stor37[address(arg1)][idx].field_512
                    mem[_892 + 96] = stor37[address(arg1)][idx].field_768
                    mem[_892 + 128] = stor37[address(arg1)][idx].field_1024
                    if stor37[address(arg1)][idx].field_768 > block.timestamp:
                        if stor37[address(arg1)][idx].field_1024 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1142 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1142] = 26
                            mem[_1142 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1266 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1266] = 26
                            mem[_1266 + 32] = 'SafeMath: division by zero'
                            if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1165 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1165] = 26
                            mem[_1165 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1303 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1303] = 26
                            mem[_1303 + 32] = 'SafeMath: division by zero'
                            if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 37
                    idx = idx + 1
                    continue 
            else:
                if 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 and sub_f288baf6 > -1 / 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 17
                if not 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 18
                if 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 != sub_f288baf6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 <= sub_f288baf6:
                    if 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 > !stor18[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if (0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 < 0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = (4 * ceil32(return_data.size)) + 672
                    idx = 0
                    while idx < stor37[address(arg1)].field_0:
                        mem[32] = 37
                        if idx >= stor37[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 37)
                        _877 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_877] = stor37[address(arg1)][idx].field_0
                        mem[_877 + 32] = stor37[address(arg1)][idx].field_256
                        mem[_877 + 64] = stor37[address(arg1)][idx].field_512
                        mem[_877 + 96] = stor37[address(arg1)][idx].field_768
                        mem[_877 + 128] = stor37[address(arg1)][idx].field_1024
                        if stor37[address(arg1)][idx].field_768 > block.timestamp:
                            if stor37[address(arg1)][idx].field_1024 > !((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                revert with 'NH{q', 17
                            if stor37[address(arg1)][idx].field_1024 + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1139 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1139] = 26
                                mem[_1139 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1260 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1260] = 26
                                mem[_1260 + 32] = 'SafeMath: division by zero'
                                if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 > !((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                revert with 'NH{q', 17
                            if ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1162 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1162] = 26
                                mem[_1162 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (10^18 * stor37[address(arg1)][idx].field_512) + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1300 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1300] = 26
                                mem[_1300 + 32] = 'SafeMath: division by zero'
                                if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (10^18 * stor37[address(arg1)][idx].field_512) + ((0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 37
                        idx = idx + 1
                        continue 
                    return combinedWeightOf[address(arg1)], 
                           0 / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18,
                           0
                if sub_f288baf6 > !stor18[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if sub_f288baf6 + stor18[address(arg1)].field_0 < sub_f288baf6:
                    revert with 0, 'SafeMath: addition overflow'
                mem[64] = (4 * ceil32(return_data.size)) + 672
                idx = 0
                while idx < stor37[address(arg1)].field_0:
                    mem[32] = 37
                    if idx >= stor37[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 37)
                    _882 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_882] = stor37[address(arg1)][idx].field_0
                    mem[_882 + 32] = stor37[address(arg1)][idx].field_256
                    mem[_882 + 64] = stor37[address(arg1)][idx].field_512
                    mem[_882 + 96] = stor37[address(arg1)][idx].field_768
                    mem[_882 + 128] = stor37[address(arg1)][idx].field_1024
                    if stor37[address(arg1)][idx].field_768 > block.timestamp:
                        if stor37[address(arg1)][idx].field_1024 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1140 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1140] = 26
                            mem[_1140 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1262 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1262] = 26
                            mem[_1262 + 32] = 'SafeMath: division by zero'
                            if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1163] = 26
                            mem[_1163 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1301 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1301] = 26
                            mem[_1301 + 32] = 'SafeMath: division by zero'
                            if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 37
                    idx = idx + 1
                    continue 
        else:
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                if 0 <= sub_f288baf6:
                    if 0 > !stor18[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if stor18[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = (4 * ceil32(return_data.size)) + 672
                    idx = 0
                    while idx < stor37[address(arg1)].field_0:
                        mem[32] = 37
                        if idx >= stor37[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 37)
                        _867 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_867] = stor37[address(arg1)][idx].field_0
                        mem[_867 + 32] = stor37[address(arg1)][idx].field_256
                        mem[_867 + 64] = stor37[address(arg1)][idx].field_512
                        mem[_867 + 96] = stor37[address(arg1)][idx].field_768
                        mem[_867 + 128] = stor37[address(arg1)][idx].field_1024
                        if stor37[address(arg1)][idx].field_768 > block.timestamp:
                            if stor37[address(arg1)][idx].field_1024 > !stor18[address(arg1)].field_1:
                                revert with 'NH{q', 17
                            if stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 < stor37[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1137 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1137] = 26
                                mem[_1137 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + stor18[address(arg1)].field_1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1256 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1256] = 26
                                mem[_1256 + 32] = 'SafeMath: division by zero'
                                if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 > !stor18[address(arg1)].field_1:
                                revert with 'NH{q', 17
                            if stor18[address(arg1)].field_1 + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1160 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1160] = 26
                                mem[_1160 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor18[address(arg1)].field_1 + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor18[address(arg1)].field_1 + 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1298] = 26
                                mem[_1298 + 32] = 'SafeMath: division by zero'
                                if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (10^18 * stor37[address(arg1)][idx].field_512) + (stor18[address(arg1)].field_1 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 37
                        idx = idx + 1
                        continue 
                    return combinedWeightOf[address(arg1)], 0, 0
                if sub_f288baf6 > !stor18[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if sub_f288baf6 + stor18[address(arg1)].field_0 < sub_f288baf6:
                    revert with 0, 'SafeMath: addition overflow'
                mem[64] = (4 * ceil32(return_data.size)) + 672
                idx = 0
                while idx < stor37[address(arg1)].field_0:
                    mem[32] = 37
                    if idx >= stor37[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 37)
                    _872 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_872] = stor37[address(arg1)][idx].field_0
                    mem[_872 + 32] = stor37[address(arg1)][idx].field_256
                    mem[_872 + 64] = stor37[address(arg1)][idx].field_512
                    mem[_872 + 96] = stor37[address(arg1)][idx].field_768
                    mem[_872 + 128] = stor37[address(arg1)][idx].field_1024
                    if stor37[address(arg1)][idx].field_768 > block.timestamp:
                        if stor37[address(arg1)][idx].field_1024 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1138 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1138] = 26
                            mem[_1138 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1258] = 26
                            mem[_1258 + 32] = 'SafeMath: division by zero'
                            if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1161 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1161] = 26
                            mem[_1161 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1299 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1299] = 26
                            mem[_1299 + 32] = 'SafeMath: division by zero'
                            if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 37
                    idx = idx + 1
                    continue 
            else:
                if 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 and sub_f288baf6 > -1 / 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18:
                    revert with 'NH{q', 18
                if 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 != sub_f288baf6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 <= sub_f288baf6:
                    if 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18 > !stor18[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    if (10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 < 10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = (4 * ceil32(return_data.size)) + 672
                    idx = 0
                    while idx < stor37[address(arg1)].field_0:
                        mem[32] = 37
                        if idx >= stor37[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 37)
                        _857 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_857] = stor37[address(arg1)][idx].field_0
                        mem[_857 + 32] = stor37[address(arg1)][idx].field_256
                        mem[_857 + 64] = stor37[address(arg1)][idx].field_512
                        mem[_857 + 96] = stor37[address(arg1)][idx].field_768
                        mem[_857 + 128] = stor37[address(arg1)][idx].field_1024
                        if stor37[address(arg1)][idx].field_768 > block.timestamp:
                            if stor37[address(arg1)][idx].field_1024 > !((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                revert with 'NH{q', 17
                            if stor37[address(arg1)][idx].field_1024 + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1135 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1135] = 26
                                mem[_1135 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1252 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1252] = 26
                                mem[_1252 + 32] = 'SafeMath: division by zero'
                                if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^18 > !((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2):
                                revert with 'NH{q', 17
                            if ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not stor37[address(arg1)][idx].field_512:
                                _1158 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1158] = 26
                                mem[_1158 + 32] = 'SafeMath: division by zero'
                            else:
                                if stor37[address(arg1)][idx].field_512 and ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if not stor37[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 18
                                if (10^18 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2) + 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _1296 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1296] = 26
                                mem[_1296 + 32] = 'SafeMath: division by zero'
                                if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                    revert with 'NH{q', 17
                                if (10^18 * stor37[address(arg1)][idx].field_512) + ((10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18) + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 37
                        idx = idx + 1
                        continue 
                    return combinedWeightOf[address(arg1)], 
                           10^18 * ext_call.return_data[0] / 10^18 * uint128(ext_call.return_data[160]) / ext_call.return_data[0] * lockedLiquidityOf[address(arg1)] / 10^18 * sub_f2a8d349 / 10^18 * sub_f288baf6 / 10^18,
                           0
                if sub_f288baf6 > !stor18[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if sub_f288baf6 + stor18[address(arg1)].field_0 < sub_f288baf6:
                    revert with 0, 'SafeMath: addition overflow'
                mem[64] = (4 * ceil32(return_data.size)) + 672
                idx = 0
                while idx < stor37[address(arg1)].field_0:
                    mem[32] = 37
                    if idx >= stor37[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 37)
                    _862 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_862] = stor37[address(arg1)][idx].field_0
                    mem[_862 + 32] = stor37[address(arg1)][idx].field_256
                    mem[_862 + 64] = stor37[address(arg1)][idx].field_512
                    mem[_862 + 96] = stor37[address(arg1)][idx].field_768
                    mem[_862 + 128] = stor37[address(arg1)][idx].field_1024
                    if stor37[address(arg1)][idx].field_768 > block.timestamp:
                        if stor37[address(arg1)][idx].field_1024 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) < stor37[address(arg1)][idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1136 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1136] = 26
                            mem[_1136 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != stor37[address(arg1)][idx].field_1024 + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1254 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1254] = 26
                            mem[_1254 + 32] = 'SafeMath: division by zero'
                            if 0 > !((stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (stor37[address(arg1)][idx].field_1024 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^18 > !(sub_f288baf6 + stor18[address(arg1)].field_0 / 2):
                            revert with 'NH{q', 17
                        if (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 < 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not stor37[address(arg1)][idx].field_512:
                            _1159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1159] = 26
                            mem[_1159 + 32] = 'SafeMath: division by zero'
                        else:
                            if stor37[address(arg1)][idx].field_512 and (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18 > -1 / stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 17
                            if not stor37[address(arg1)][idx].field_512:
                                revert with 'NH{q', 18
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / stor37[address(arg1)][idx].field_512 != (sub_f288baf6 + stor18[address(arg1)].field_0 / 2) + 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1297 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1297] = 26
                            mem[_1297 + 32] = 'SafeMath: division by zero'
                            if 0 > !((10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18):
                                revert with 'NH{q', 17
                            if (10^18 * stor37[address(arg1)][idx].field_512) + (sub_f288baf6 + stor18[address(arg1)].field_0 / 2 * stor37[address(arg1)][idx].field_512) / 10^18 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 37
                    idx = idx + 1
                    continue 
    return combinedWeightOf[address(arg1)], sub_f288baf6, 0
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalLiquidityLocked:
        if not combinedWeightOf[address(arg1)]:
            return 0
        if sub_144e8034[address(arg1)] > stor26:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor26 < sub_144e8034[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if sub_c126d1aa[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor26 - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 - sub_144e8034[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if not totalCombinedWeight:
        if not combinedWeightOf[address(arg1)]:
            return 0
        if sub_144e8034[address(arg1)] > stor26:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor26 < sub_144e8034[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if sub_c126d1aa[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor26 - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 - sub_144e8034[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if not block.timestamp - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor26 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor26 + (0 / totalCombinedWeight) < stor26:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp < lastUpdateTime:
                    revert with 'NH{q', 17
                if not block.timestamp - lastUpdateTime:
                    if not totalCombinedWeight:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor27 > !(0 / totalCombinedWeight):
                        revert with 'NH{q', 17
                    if stor27 + (0 / totalCombinedWeight) < stor27:
                        revert with 0, 'SafeMath: addition overflow'
                    if not combinedWeightOf[address(arg1)]:
                        return 0
                    if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !sub_c126d1aa[address(arg1)]:
                            revert with 'NH{q', 17
                        if sub_c126d1aa[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                            revert with 'NH{q', 17
                        if not combinedWeightOf[address(arg1)]:
                            if 0 > !rewards1[address(arg1)]:
                                revert with 'NH{q', 17
                            if rewards1[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                        if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                            revert with 'NH{q', 17
                        if not combinedWeightOf[address(arg1)]:
                            revert with 'NH{q', 18
                        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], 
                               ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                               rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 17
                if not block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    if not totalCombinedWeight:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor27 > !(0 / totalCombinedWeight):
                        revert with 'NH{q', 17
                    if stor27 + (0 / totalCombinedWeight) < stor27:
                        revert with 0, 'SafeMath: addition overflow'
                    if not combinedWeightOf[address(arg1)]:
                        return 0
                    if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !sub_c126d1aa[address(arg1)]:
                            revert with 'NH{q', 17
                        if sub_c126d1aa[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                            revert with 'NH{q', 17
                        if not combinedWeightOf[address(arg1)]:
                            if 0 > !rewards1[address(arg1)]:
                                revert with 'NH{q', 17
                            if rewards1[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                        if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                            revert with 'NH{q', 17
                        if not combinedWeightOf[address(arg1)]:
                            revert with 'NH{q', 18
                        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], 
                               ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                               rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    revert with 'NH{q', 17
                if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    revert with 'NH{q', 18
                if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if not periodFinish - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if not periodFinish - lastUpdateTime:
                revert with 'NH{q', 18
            if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if block.timestamp - lastUpdateTime and rewardRate0 > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if not block.timestamp - lastUpdateTime:
            revert with 'NH{q', 18
        if (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0) / block.timestamp - lastUpdateTime != rewardRate0:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor26 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor26 + (0 / totalCombinedWeight) < stor26:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp < lastUpdateTime:
                    revert with 'NH{q', 17
                if not block.timestamp - lastUpdateTime:
                    if not totalCombinedWeight:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor27 > !(0 / totalCombinedWeight):
                        revert with 'NH{q', 17
                    if stor27 + (0 / totalCombinedWeight) < stor27:
                        revert with 0, 'SafeMath: addition overflow'
                    if not combinedWeightOf[address(arg1)]:
                        return 0
                    if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !sub_c126d1aa[address(arg1)]:
                            revert with 'NH{q', 17
                        if sub_c126d1aa[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                            revert with 'NH{q', 17
                        if not combinedWeightOf[address(arg1)]:
                            if 0 > !rewards1[address(arg1)]:
                                revert with 'NH{q', 17
                            if rewards1[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                        if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                            revert with 'NH{q', 17
                        if not combinedWeightOf[address(arg1)]:
                            revert with 'NH{q', 18
                        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], 
                               ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                               rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 17
                if not block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    if not totalCombinedWeight:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor27 > !(0 / totalCombinedWeight):
                        revert with 'NH{q', 17
                    if stor27 + (0 / totalCombinedWeight) < stor27:
                        revert with 0, 'SafeMath: addition overflow'
                    if not combinedWeightOf[address(arg1)]:
                        return 0
                    if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !sub_c126d1aa[address(arg1)]:
                            revert with 'NH{q', 17
                        if sub_c126d1aa[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                            revert with 'NH{q', 17
                        if not combinedWeightOf[address(arg1)]:
                            if 0 > !rewards1[address(arg1)]:
                                revert with 'NH{q', 17
                            if rewards1[address(arg1)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                        if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                            revert with 'NH{q', 17
                        if not combinedWeightOf[address(arg1)]:
                            revert with 'NH{q', 18
                        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], 
                               ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                               rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    revert with 'NH{q', 17
                if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                    revert with 'NH{q', 18
                if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if not periodFinish - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if not periodFinish - lastUpdateTime:
                revert with 'NH{q', 18
            if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0) and 10^18 > -1 / (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0):
            revert with 'NH{q', 17
        if not (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0):
            revert with 'NH{q', 18
        if (10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / (block.timestamp * rewardRate0) - (lastUpdateTime * rewardRate0) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor26 > !((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < stor26:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                revert with 'NH{q', 18
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if lastUpdateTime > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if periodFinish < lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            revert with 'NH{q', 18
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 17
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 18
        if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        if not combinedWeightOf[address(arg1)]:
            return 0
        if sub_144e8034[address(arg1)] > stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if sub_c126d1aa[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if periodFinish < lastUpdateTime:
        revert with 'NH{q', 17
    if not periodFinish - lastUpdateTime:
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor26 > !(0 / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor26 + (0 / totalCombinedWeight) < stor26:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                revert with 'NH{q', 18
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if lastUpdateTime > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if periodFinish < lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            revert with 'NH{q', 18
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 17
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 18
        if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        if not combinedWeightOf[address(arg1)]:
            return 0
        if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if sub_c126d1aa[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if periodFinish - lastUpdateTime and rewardRate0 > -1 / periodFinish - lastUpdateTime:
        revert with 'NH{q', 17
    if not periodFinish - lastUpdateTime:
        revert with 'NH{q', 18
    if (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0) / periodFinish - lastUpdateTime != rewardRate0:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0):
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor26 > !(0 / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor26 + (0 / totalCombinedWeight) < stor26:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if not block.timestamp - lastUpdateTime:
                revert with 'NH{q', 18
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                if not totalCombinedWeight:
                    revert with 0, 'SafeMath: division by zero', 0
                if stor27 > !(0 / totalCombinedWeight):
                    revert with 'NH{q', 17
                if stor27 + (0 / totalCombinedWeight) < stor27:
                    revert with 0, 'SafeMath: addition overflow'
                if not combinedWeightOf[address(arg1)]:
                    return 0
                if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !sub_c126d1aa[address(arg1)]:
                        revert with 'NH{q', 17
                    if sub_c126d1aa[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        if 0 > !rewards1[address(arg1)]:
                            revert with 'NH{q', 17
                        if rewards1[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                    if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 17
                    if not combinedWeightOf[address(arg1)]:
                        revert with 'NH{q', 18
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], 
                           ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                           rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 17
            if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
                revert with 'NH{q', 18
            if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if lastUpdateTime > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if periodFinish < lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
            revert with 'NH{q', 17
        if not periodFinish - lastUpdateTime:
            revert with 'NH{q', 18
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 17
        if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 18
        if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        if not combinedWeightOf[address(arg1)]:
            return 0
        if sub_144e8034[address(arg1)] > stor26 + (0 / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor26 + (0 / totalCombinedWeight) < sub_144e8034[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if sub_c126d1aa[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + (0 / totalCombinedWeight) - sub_144e8034[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0) and 10^18 > -1 / (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0):
        revert with 'NH{q', 17
    if not (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0):
        revert with 'NH{q', 18
    if (10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / (periodFinish * rewardRate0) - (lastUpdateTime * rewardRate0) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalCombinedWeight:
        revert with 0, 'SafeMath: division by zero', 0
    if stor26 > !((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
        revert with 'NH{q', 17
    if stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < stor26:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if not block.timestamp - lastUpdateTime:
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if block.timestamp - lastUpdateTime and rewardRate1 > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if not block.timestamp - lastUpdateTime:
            revert with 'NH{q', 18
        if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) / block.timestamp - lastUpdateTime != rewardRate1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
            if not totalCombinedWeight:
                revert with 0, 'SafeMath: division by zero', 0
            if stor27 > !(0 / totalCombinedWeight):
                revert with 'NH{q', 17
            if stor27 + (0 / totalCombinedWeight) < stor27:
                revert with 0, 'SafeMath: addition overflow'
            if not combinedWeightOf[address(arg1)]:
                return 0
            if sub_144e8034[address(arg1)] > stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !sub_c126d1aa[address(arg1)]:
                    revert with 'NH{q', 17
                if sub_c126d1aa[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    if 0 > !rewards1[address(arg1)]:
                        revert with 'NH{q', 17
                    if rewards1[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
                if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 17
                if not combinedWeightOf[address(arg1)]:
                    revert with 'NH{q', 18
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], 
                       ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                       rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 17
        if not (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1):
            revert with 'NH{q', 18
        if (10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (block.timestamp * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        if not combinedWeightOf[address(arg1)]:
            return 0
        if sub_144e8034[address(arg1)] > stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if sub_c126d1aa[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if periodFinish < lastUpdateTime:
        revert with 'NH{q', 17
    if not periodFinish - lastUpdateTime:
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !(0 / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + (0 / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        if not combinedWeightOf[address(arg1)]:
            return 0
        if sub_144e8034[address(arg1)] > stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if sub_c126d1aa[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if periodFinish - lastUpdateTime and rewardRate1 > -1 / periodFinish - lastUpdateTime:
        revert with 'NH{q', 17
    if not periodFinish - lastUpdateTime:
        revert with 'NH{q', 18
    if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) / periodFinish - lastUpdateTime != rewardRate1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
        if not totalCombinedWeight:
            revert with 0, 'SafeMath: division by zero', 0
        if stor27 > !(0 / totalCombinedWeight):
            revert with 'NH{q', 17
        if stor27 + (0 / totalCombinedWeight) < stor27:
            revert with 0, 'SafeMath: addition overflow'
        if not combinedWeightOf[address(arg1)]:
            return 0
        if sub_144e8034[address(arg1)] > stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !sub_c126d1aa[address(arg1)]:
                revert with 'NH{q', 17
            if sub_c126d1aa[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                if 0 > !rewards1[address(arg1)]:
                    revert with 'NH{q', 17
                if rewards1[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
            if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 17
            if not combinedWeightOf[address(arg1)]:
                revert with 'NH{q', 18
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], 
                   ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27 + (0 / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 + (0 / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
                   rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + (0 / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) + (0 / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) and 10^18 > -1 / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
        revert with 'NH{q', 17
    if not (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1):
        revert with 'NH{q', 18
    if (10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / (periodFinish * rewardRate1) - (lastUpdateTime * rewardRate1) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalCombinedWeight:
        revert with 0, 'SafeMath: division by zero', 0
    if stor27 > !((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
        revert with 'NH{q', 17
    if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < stor27:
        revert with 0, 'SafeMath: addition overflow'
    if not combinedWeightOf[address(arg1)]:
        return 0
    if sub_144e8034[address(arg1)] > stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) < sub_144e8034[address(arg1)]:
        revert with 'NH{q', 17
    if not combinedWeightOf[address(arg1)]:
        if 0 > !sub_c126d1aa[address(arg1)]:
            revert with 'NH{q', 17
        if sub_c126d1aa[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            if 0 > !rewards1[address(arg1)]:
                revert with 'NH{q', 17
            if rewards1[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_c126d1aa[address(arg1)], rewards1[address(arg1)]
        if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 17
        if not combinedWeightOf[address(arg1)]:
            revert with 'NH{q', 18
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return sub_c126d1aa[address(arg1)], 
               ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
    if combinedWeightOf[address(arg1)] and stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
        revert with 'NH{q', 17
    if not combinedWeightOf[address(arg1)]:
        revert with 'NH{q', 18
    if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor26 + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight) - sub_144e8034[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !sub_c126d1aa[address(arg1)]:
        revert with 'NH{q', 17
    if ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)] < (stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid1[address(arg1)] > stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) < userRewardPerTokenPaid1[address(arg1)]:
        revert with 'NH{q', 17
    if not combinedWeightOf[address(arg1)]:
        if 0 > !rewards1[address(arg1)]:
            revert with 'NH{q', 17
        if rewards1[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
               rewards1[address(arg1)]
    if combinedWeightOf[address(arg1)] and stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)] > -1 / combinedWeightOf[address(arg1)]:
        revert with 'NH{q', 17
    if not combinedWeightOf[address(arg1)]:
        revert with 'NH{q', 18
    if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / combinedWeightOf[address(arg1)] != stor27 + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight) - userRewardPerTokenPaid1[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18 > !rewards1[address(arg1)]:
        revert with 'NH{q', 17
    if ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)] < (stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return ((stor26 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate0) - (10^18 * lastUpdateTime * rewardRate0) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (sub_144e8034[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + sub_c126d1aa[address(arg1)], 
           ((stor27 * combinedWeightOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate1) - (10^18 * lastUpdateTime * rewardRate1) / totalCombinedWeight * combinedWeightOf[address(arg1)]) - (userRewardPerTokenPaid1[address(arg1)] * combinedWeightOf[address(arg1)]) / 10^18) + rewards1[address(arg1)]
}



}
