contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - exit()
#
address lptAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 maxLimit;
address owner;
address stor5;
uint256 unlockTime;
address sub_daf5feb6Address;
uint256 DURATION;
uint256 starttime;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function maxLimit() payable {
    return maxLimit
}

function DURATION() payable {
    return DURATION
}

function getUnlockTime() payable {
    return unlockTime
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function starttime() payable {
    return starttime
}

function owner() payable {
    return owner
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function lpt() payable {
    return lptAddress
}

function sub_daf5feb6(?) payable {
    return sub_daf5feb6Address
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function sub_ac22e9e1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    maxLimit = arg1
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    stor5 = owner
    owner = 0
    unlockTime = arg1 + block.timestamp
    emit 0x728be007 
    emit 0x0 
    emit 0x0 
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    starttime = arg1
    lastUpdateTime = arg1
    require DURATION + arg1 >= arg1
    periodFinish = DURATION + arg1
}

function unlock() payable {
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x30596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x728be007: owner, stor5
    owner = stor5
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function rewardPerToken() payable {
    if not totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime <= block.timestamp:
            if not block.timestamp - lastUpdateTime:
                require totalSupply > 0
                if totalSupply:
                    if (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                        return ((0 / totalSupply) + rewardPerTokenStored)
            else:
                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime == rewardRate
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    require totalSupply > 0
                    if totalSupply:
                        if (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                            return ((0 / totalSupply) + rewardPerTokenStored)
                else:
                    require (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                    require totalSupply > 0
                    if totalSupply:
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                            return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored)
    else:
        if lastUpdateTime <= periodFinish:
            if not periodFinish - lastUpdateTime:
                require totalSupply > 0
                if totalSupply:
                    if (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                        return ((0 / totalSupply) + rewardPerTokenStored)
            else:
                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime == rewardRate
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    require totalSupply > 0
                    if totalSupply:
                        if (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                            return ((0 / totalSupply) + rewardPerTokenStored)
                else:
                    require (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                    require totalSupply > 0
                    if totalSupply:
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                            return (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored)
    revert
}

function updateRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if totalSupply:
        if block.timestamp < periodFinish:
            require lastUpdateTime <= block.timestamp
            if not block.timestamp - lastUpdateTime:
                require totalSupply > 0
                require totalSupply
                require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                rewardPerTokenStored += 0 / totalSupply
            else:
                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime == rewardRate
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                    require totalSupply > 0
                    require totalSupply
                    require ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            require lastUpdateTime <= periodFinish
            if not periodFinish - lastUpdateTime:
                require totalSupply > 0
                require totalSupply
                require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                rewardPerTokenStored += 0 / totalSupply
            else:
                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime == rewardRate
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                    require totalSupply > 0
                    require totalSupply
                    require ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if block.timestamp <= starttime:
        if not DURATION:
            require ext_code.size(sub_daf5feb6Address)
            if arg1 >= 0:
                call sub_daf5feb6Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
            else:
                call sub_daf5feb6Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -arg1
        else:
            require rewardRate * DURATION / DURATION == rewardRate
            require ext_code.size(sub_daf5feb6Address)
            if arg1 >= rewardRate * DURATION:
                call sub_daf5feb6Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1 - (rewardRate * DURATION)
            else:
                call sub_daf5feb6Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (rewardRate * DURATION) - arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require DURATION > 0
        require DURATION
        rewardRate = arg1 / DURATION
    else:
        if block.timestamp >= periodFinish:
            require DURATION > 0
            require DURATION
            rewardRate = arg1 / DURATION
            require DURATION + block.timestamp >= block.timestamp
            periodFinish = DURATION + block.timestamp
        else:
            require block.timestamp <= periodFinish
            if not periodFinish - block.timestamp:
                require ext_code.size(sub_daf5feb6Address)
                if arg1 >= 0:
                    call sub_daf5feb6Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                else:
                    call sub_daf5feb6Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -arg1
            else:
                require (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp == rewardRate
                require ext_code.size(sub_daf5feb6Address)
                if arg1 >= (periodFinish * rewardRate) - (block.timestamp * rewardRate):
                    call sub_daf5feb6Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1 - (periodFinish * rewardRate) + (block.timestamp * rewardRate)
                else:
                    call sub_daf5feb6Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (periodFinish * rewardRate) - (block.timestamp * rewardRate) - arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require periodFinish - block.timestamp > 0
            require periodFinish - block.timestamp
            rewardRate = arg1 / periodFinish - block.timestamp
    lastUpdateTime = block.timestamp
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if userRewardPerTokenPaid[address(arg1)] <= rewardPerTokenStored:
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] >= 0:
                    return rewards[address(arg1)]
            else:
                require (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]
                if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) >= (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                    return (rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime <= block.timestamp:
                if not block.timestamp - lastUpdateTime:
                    require totalSupply > 0
                    if totalSupply:
                        if (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                            if userRewardPerTokenPaid[address(arg1)] <= (0 / totalSupply) + rewardPerTokenStored:
                                if not balanceOf[address(arg1)]:
                                    if rewards[address(arg1)] >= 0:
                                        return rewards[address(arg1)]
                                else:
                                    require (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]
                                    if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) >= (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                                        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime == rewardRate
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        require totalSupply > 0
                        if totalSupply:
                            if (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                                if userRewardPerTokenPaid[address(arg1)] <= (0 / totalSupply) + rewardPerTokenStored:
                                    if not balanceOf[address(arg1)]:
                                        if rewards[address(arg1)] >= 0:
                                            return rewards[address(arg1)]
                                    else:
                                        require (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]
                                        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) >= (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                                            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
                    else:
                        require (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                        require totalSupply > 0
                        if totalSupply:
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                                if userRewardPerTokenPaid[address(arg1)] <= ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    if not balanceOf[address(arg1)]:
                                        if rewards[address(arg1)] >= 0:
                                            return rewards[address(arg1)]
                                    else:
                                        require ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]
                                        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) >= ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                                            return (rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        else:
            if lastUpdateTime <= periodFinish:
                if not periodFinish - lastUpdateTime:
                    require totalSupply > 0
                    if totalSupply:
                        if (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                            if userRewardPerTokenPaid[address(arg1)] <= (0 / totalSupply) + rewardPerTokenStored:
                                if not balanceOf[address(arg1)]:
                                    if rewards[address(arg1)] >= 0:
                                        return rewards[address(arg1)]
                                else:
                                    require (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]
                                    if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) >= (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                                        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime == rewardRate
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        require totalSupply > 0
                        if totalSupply:
                            if (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                                if userRewardPerTokenPaid[address(arg1)] <= (0 / totalSupply) + rewardPerTokenStored:
                                    if not balanceOf[address(arg1)]:
                                        if rewards[address(arg1)] >= 0:
                                            return rewards[address(arg1)]
                                    else:
                                        require (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]
                                        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) >= (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                                            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
                    else:
                        require (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                        require totalSupply > 0
                        if totalSupply:
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored:
                                if userRewardPerTokenPaid[address(arg1)] <= ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    if not balanceOf[address(arg1)]:
                                        if rewards[address(arg1)] >= 0:
                                            return rewards[address(arg1)]
                                    else:
                                        require ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]
                                        if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) >= ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                                            return (rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    revert
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply:
        if block.timestamp < periodFinish:
            require lastUpdateTime <= block.timestamp
            if not block.timestamp - lastUpdateTime:
                require totalSupply > 0
                require totalSupply
                require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                rewardPerTokenStored += 0 / totalSupply
            else:
                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime == rewardRate
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                    require totalSupply > 0
                    require totalSupply
                    require ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            require lastUpdateTime <= periodFinish
            if not periodFinish - lastUpdateTime:
                require totalSupply > 0
                require totalSupply
                require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                rewardPerTokenStored += 0 / totalSupply
            else:
                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime == rewardRate
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                    require totalSupply > 0
                    require totalSupply
                    require ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if not totalSupply:
            require userRewardPerTokenPaid[address(msg.sender)] <= rewardPerTokenStored
            if not balanceOf[address(msg.sender)]:
                require rewards[address(msg.sender)] >= 0
            else:
                require (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                require rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                require lastUpdateTime <= block.timestamp
                if not block.timestamp - lastUpdateTime:
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    require userRewardPerTokenPaid[address(msg.sender)] <= (0 / totalSupply) + rewardPerTokenStored
                    if not balanceOf[address(msg.sender)]:
                        require rewards[address(msg.sender)] >= 0
                    else:
                        require (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                        require rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime == rewardRate
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        require totalSupply > 0
                        require totalSupply
                        require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                        require userRewardPerTokenPaid[address(msg.sender)] <= (0 / totalSupply) + rewardPerTokenStored
                        if not balanceOf[address(msg.sender)]:
                            require rewards[address(msg.sender)] >= 0
                        else:
                            require (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                            require rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                        require totalSupply > 0
                        require totalSupply
                        require ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                        require userRewardPerTokenPaid[address(msg.sender)] <= ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored
                        if not balanceOf[address(msg.sender)]:
                            require rewards[address(msg.sender)] >= 0
                        else:
                            require ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                            require rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                require lastUpdateTime <= periodFinish
                if not periodFinish - lastUpdateTime:
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    require userRewardPerTokenPaid[address(msg.sender)] <= (0 / totalSupply) + rewardPerTokenStored
                    if not balanceOf[address(msg.sender)]:
                        require rewards[address(msg.sender)] >= 0
                    else:
                        require (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                        require rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime == rewardRate
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        require totalSupply > 0
                        require totalSupply
                        require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                        require userRewardPerTokenPaid[address(msg.sender)] <= (0 / totalSupply) + rewardPerTokenStored
                        if not balanceOf[address(msg.sender)]:
                            require rewards[address(msg.sender)] >= 0
                        else:
                            require (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                            require rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                        require totalSupply > 0
                        require totalSupply
                        require ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                        require userRewardPerTokenPaid[address(msg.sender)] <= ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored
                        if not balanceOf[address(msg.sender)]:
                            require rewards[address(msg.sender)] >= 0
                        else:
                            require ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                            require rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if block.timestamp < starttime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x3046544d4641524d4c50546f6b656e5368617265506f6f6c3a206e6f742073746172,
                    mem[198 len 30]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xe046544d4641524d4c50546f6b656e5368617265506f6f6c3a2043616e6e6f7420776974686472617720,
                    mem[206 len 22]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require ext_code.size(lptAddress)
    call lptAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdrawn(arg1, msg.sender);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply:
        if block.timestamp < periodFinish:
            require lastUpdateTime <= block.timestamp
            if not block.timestamp - lastUpdateTime:
                require totalSupply > 0
                require totalSupply
                require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                rewardPerTokenStored += 0 / totalSupply
            else:
                require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime == rewardRate
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                    require totalSupply > 0
                    require totalSupply
                    require ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            require lastUpdateTime <= periodFinish
            if not periodFinish - lastUpdateTime:
                require totalSupply > 0
                require totalSupply
                require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                rewardPerTokenStored += 0 / totalSupply
            else:
                require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime == rewardRate
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                    require totalSupply > 0
                    require totalSupply
                    require ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if not totalSupply:
            require userRewardPerTokenPaid[address(msg.sender)] <= rewardPerTokenStored
            if not balanceOf[address(msg.sender)]:
                require rewards[address(msg.sender)] >= 0
            else:
                require (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                require rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                require lastUpdateTime <= block.timestamp
                if not block.timestamp - lastUpdateTime:
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    require userRewardPerTokenPaid[address(msg.sender)] <= (0 / totalSupply) + rewardPerTokenStored
                    if not balanceOf[address(msg.sender)]:
                        require rewards[address(msg.sender)] >= 0
                    else:
                        require (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                        require rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime == rewardRate
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        require totalSupply > 0
                        require totalSupply
                        require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                        require userRewardPerTokenPaid[address(msg.sender)] <= (0 / totalSupply) + rewardPerTokenStored
                        if not balanceOf[address(msg.sender)]:
                            require rewards[address(msg.sender)] >= 0
                        else:
                            require (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                            require rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                        require totalSupply > 0
                        require totalSupply
                        require ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                        require userRewardPerTokenPaid[address(msg.sender)] <= ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored
                        if not balanceOf[address(msg.sender)]:
                            require rewards[address(msg.sender)] >= 0
                        else:
                            require ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                            require rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                require lastUpdateTime <= periodFinish
                if not periodFinish - lastUpdateTime:
                    require totalSupply > 0
                    require totalSupply
                    require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                    require userRewardPerTokenPaid[address(msg.sender)] <= (0 / totalSupply) + rewardPerTokenStored
                    if not balanceOf[address(msg.sender)]:
                        require rewards[address(msg.sender)] >= 0
                    else:
                        require (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                        require rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime == rewardRate
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        require totalSupply > 0
                        require totalSupply
                        require (0 / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                        require userRewardPerTokenPaid[address(msg.sender)] <= (0 / totalSupply) + rewardPerTokenStored
                        if not balanceOf[address(msg.sender)]:
                            require rewards[address(msg.sender)] >= 0
                        else:
                            require (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                            require rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) == 10^18
                        require totalSupply > 0
                        require totalSupply
                        require ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored >= rewardPerTokenStored
                        require userRewardPerTokenPaid[address(msg.sender)] <= ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored
                        if not balanceOf[address(msg.sender)]:
                            require rewards[address(msg.sender)] >= 0
                        else:
                            require ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]
                            require rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) >= ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if block.timestamp < starttime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x3046544d4641524d4c50546f6b656e5368617265506f6f6c3a206e6f742073746172,
                    mem[198 len 30]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7346544d4641524d4c50546f6b656e5368617265506f6f6c3a2043616e6e6f74207374616b6520,
                    mem[203 len 25]
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    if arg1 + balanceOf[msg.sender] > maxLimit:
        revert with 0, 'lp amount exceed max limit'
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += arg1
    require ext_code.size(lptAddress)
    call lptAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Staked(arg1, msg.sender);
}



}
