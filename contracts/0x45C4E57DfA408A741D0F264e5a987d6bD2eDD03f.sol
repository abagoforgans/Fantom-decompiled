contract main {




// =====================  Runtime code  =====================


#
#  - compoundAllRewards()
#
address owner;
mapping of uint8 stor1;
address sub_96effb75Address;
address stakingNFTAddress;
address rewardPoolAddress;
address stakingAddress;
uint256 dailyReward;
uint256 sub_fd50644d;
uint256 lastRewardBlock;
uint256 totalStaked;
mapping of struct nFTBalance;

function checkIfNFTInCirculation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(nFTBalance[arg1].field_512)
}

function getNFTBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nFTBalance[arg1].field_256
}

function StakingNFT() payable {
    return stakingNFTAddress
}

function staking() payable {
    return stakingAddress
}

function rewardPool() payable {
    return rewardPoolAddress
}

function NFTDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nFTBalance[arg1].field_0, nFTBalance[arg1].field_256, bool(nFTBalance[arg1].field_512), nFTBalance[arg1].field_768
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function sub_96effb75(?) payable {
    return sub_96effb75Address
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function dailyReward() payable {
    return dailyReward
}

function sub_fd50644d(?) payable {
    return sub_fd50644d
}

function _fallback() payable {
    revert
}

function setDailyReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    dailyReward = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    owner = arg1
    emit TransferredOwnership(owner, address(arg1), block.timestamp);
}

function addPlatformAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    if stor1[address(arg1)]:
        revert with 0, 'already platform address'
    stor1[address(arg1)] = 1
    emit AddedPlatformAddress(address(arg1), block.timestamp);
}

function removePlatformAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner only'
    if bool(stor1[address(arg1)]) != 1:
        revert with 0, 'not platform address'
    stor1[address(arg1)] = 0
    emit RemovedPlatformAddress(address(arg1), block.timestamp);
}

function unstakeAll() payable {
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'User has no stake'
    ...  # unusual jump ('remco jump', ('var', 10001)), couldn't decompile, sorry
}

function getRewardPerBlock() payable {
    require ext_code.size(sub_96effb75Address)
    staticcall sub_96effb75Address.0x70a08231 with:
            gas gas_remaining wei
           args rewardPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (dailyReward * ext_call.return_data[0] / 50000 / 10000)
}

function addStakeholderExternal(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    call stakingAddress with:
         gas gas_remaining wei
        args Mask(224, 0, unknown_0x6a627842(?????), address(arg1) << 64), mem[196 len 4]
    if bool(ext_call.success) != 1:
        revert with 0, 'Mint call failed'
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.0x6d4b7deb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    nFTBalance[ext_call.return_data[0]].field_0 = arg1
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.0x6d4b7deb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    nFTBalance[ext_call.return_data[0]].field_512 = 1
}

function getTotalBalance(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.mem[var20003 len 4] with:
            gas gas_remaining wei
           args mem[var20003 + 4 len var20004 - 4]
    mem[var20005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var24003 >= mem[var24002]:
        return var24004
    mem[96] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var26001
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.mem[var28003 len 4] with:
            gas gas_remaining wei
           args mem[var28003 + 4 len var28004 - 4]
    mem[var28005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = var34001
    mem[32] = 10
    if var38001 + var38002 < var38002:
        revert with 0, 'SafeMath: addition overflow'
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.mem[var48003 len 4] with:
            gas gas_remaining wei
           args mem[var48003 + 4 len var48004 - 4]
    mem[var48005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var52003 >= mem[var52002]:
        return var52004
    require ext_code.size(stakingNFTAddress)
    # nil
}

function updatePool() payable {
    if block.number > lastRewardBlock:
        if not totalStaked:
            lastRewardBlock = block.number
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_96effb75Address)
            staticcall sub_96effb75Address.0x70a08231 with:
                    gas gas_remaining wei
                   args rewardPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.number - lastRewardBlock:
                    if 0 / block.number - lastRewardBlock:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardPoolAddress, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fd50644d += 0 / totalStaked
                lastRewardBlock = block.number
                emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
            else:
                if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not block.number - lastRewardBlock:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd50644d += 0 / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                else:
                    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += 0 / totalStaked
                    else:
                        if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
}

function pendingRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= lastRewardBlock:
        if not nFTBalance[arg1].field_256:
            if nFTBalance[arg1].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -nFTBalance[arg1].field_768
        if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768)
    if not totalStaked:
        if not nFTBalance[arg1].field_256:
            if nFTBalance[arg1].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -nFTBalance[arg1].field_768
        if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768)
    if lastRewardBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(sub_96effb75Address)
    staticcall sub_96effb75Address.0x70a08231 with:
            gas gas_remaining wei
           args rewardPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.number - lastRewardBlock:
            if 0 / block.number - lastRewardBlock:
                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not totalStaked:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
            revert with 0, 'SafeMath: addition overflow'
        if not nFTBalance[arg1].field_256:
            if nFTBalance[arg1].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -nFTBalance[arg1].field_768
        if (0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / nFTBalance[arg1].field_256 != (0 / totalStaked) + sub_fd50644d:
            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if nFTBalance[arg1].field_768 > (0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / 10^18) - nFTBalance[arg1].field_768)
    if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not block.number - lastRewardBlock:
        if not totalStaked:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
            revert with 0, 'SafeMath: addition overflow'
        if not nFTBalance[arg1].field_256:
            if nFTBalance[arg1].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -nFTBalance[arg1].field_768
        if (0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / nFTBalance[arg1].field_256 != (0 / totalStaked) + sub_fd50644d:
            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if nFTBalance[arg1].field_768 > (0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / 10^18) - nFTBalance[arg1].field_768)
    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
        if not totalStaked:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
            revert with 0, 'SafeMath: addition overflow'
        if not nFTBalance[arg1].field_256:
            if nFTBalance[arg1].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -nFTBalance[arg1].field_768
        if (0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / nFTBalance[arg1].field_256 != (0 / totalStaked) + sub_fd50644d:
            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if nFTBalance[arg1].field_768 > (0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / 10^18) - nFTBalance[arg1].field_768)
    if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not totalStaked:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
        revert with 0, 'SafeMath: addition overflow'
    if not nFTBalance[arg1].field_256:
        if nFTBalance[arg1].field_768 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -nFTBalance[arg1].field_768
    if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / nFTBalance[arg1].field_256 != ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d:
        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if nFTBalance[arg1].field_768 > ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked * nFTBalance[arg1].field_256) + (sub_fd50644d * nFTBalance[arg1].field_256) / 10^18) - nFTBalance[arg1].field_768)
}

function claimRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'User is not owner of token'
    if bool(nFTBalance[arg1].field_512) != 1:
        revert with 0, 'Stake has already been withdrawn'
    if block.number <= lastRewardBlock:
        if not nFTBalance[arg1].field_256:
            if nFTBalance[arg1].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -nFTBalance[arg1].field_768 <= 0:
                revert with 0, 'No rewards to claim!'
            require ext_code.size(sub_96effb75Address)
            call sub_96effb75Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, -nFTBalance[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not nFTBalance[arg1].field_256:
                nFTBalance[arg1].field_768 = 0
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            emit 0xfe56253d: msg.sender, -nFTBalance[arg1].field_768, arg1, block.timestamp
        else:
            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 <= 0:
                revert with 0, 'No rewards to claim!'
            require ext_code.size(sub_96effb75Address)
            call sub_96effb75Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not nFTBalance[arg1].field_256:
                nFTBalance[arg1].field_768 = 0
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
    else:
        if not totalStaked:
            lastRewardBlock = block.number
            if not nFTBalance[arg1].field_256:
                if nFTBalance[arg1].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -nFTBalance[arg1].field_768 <= 0:
                    revert with 0, 'No rewards to claim!'
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -nFTBalance[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                emit 0xfe56253d: msg.sender, -nFTBalance[arg1].field_768, arg1, block.timestamp
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 <= 0:
                    revert with 0, 'No rewards to claim!'
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_96effb75Address)
            staticcall sub_96effb75Address.0x70a08231 with:
                    gas gas_remaining wei
                   args rewardPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.number - lastRewardBlock:
                    if 0 / block.number - lastRewardBlock:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardPoolAddress, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fd50644d += 0 / totalStaked
                lastRewardBlock = block.number
                emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
            else:
                if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not block.number - lastRewardBlock:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd50644d += 0 / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                else:
                    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += 0 / totalStaked
                    else:
                        if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
            if not nFTBalance[arg1].field_256:
                if nFTBalance[arg1].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -nFTBalance[arg1].field_768 <= 0:
                    revert with 0, 'No rewards to claim!'
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -nFTBalance[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                emit 0xfe56253d: msg.sender, -nFTBalance[arg1].field_768, arg1, block.timestamp
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 <= 0:
                    revert with 0, 'No rewards to claim!'
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
}

function compoundRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'User is not owner of token'
    if bool(nFTBalance[arg1].field_512) != 1:
        revert with 0, 'Stake has already been withdrawn'
    if block.number <= lastRewardBlock:
        if not nFTBalance[arg1].field_256:
            if nFTBalance[arg1].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -nFTBalance[arg1].field_768 <= 0:
                revert with 0, 'No rewards to compound!'
            if -nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                revert with 0, 'SafeMath: addition overflow'
            nFTBalance[arg1].field_256 -= nFTBalance[arg1].field_768
            if -nFTBalance[arg1].field_768 + totalStaked < totalStaked:
                revert with 0, 'SafeMath: addition overflow'
            totalStaked -= nFTBalance[arg1].field_768
            if not nFTBalance[arg1].field_256:
                nFTBalance[arg1].field_768 = 0
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            emit RewardsCompounded(msg.sender, -nFTBalance[arg1].field_768, arg1, nFTBalance[arg1].field_256, block.timestamp);
        else:
            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 <= 0:
                revert with 0, 'No rewards to compound!'
            if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                revert with 0, 'SafeMath: addition overflow'
            nFTBalance[arg1].field_256 = (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256
            if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + totalStaked < totalStaked:
                revert with 0, 'SafeMath: addition overflow'
            totalStaked = (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + totalStaked
            if not nFTBalance[arg1].field_256:
                nFTBalance[arg1].field_768 = 0
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            emit RewardsCompounded(msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, nFTBalance[arg1].field_256, block.timestamp);
    else:
        if not totalStaked:
            lastRewardBlock = block.number
            if not nFTBalance[arg1].field_256:
                if nFTBalance[arg1].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -nFTBalance[arg1].field_768 <= 0:
                    revert with 0, 'No rewards to compound!'
                if -nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                nFTBalance[arg1].field_256 -= nFTBalance[arg1].field_768
                if -nFTBalance[arg1].field_768 + totalStaked < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked -= nFTBalance[arg1].field_768
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                emit RewardsCompounded(msg.sender, -nFTBalance[arg1].field_768, arg1, nFTBalance[arg1].field_256, block.timestamp);
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 <= 0:
                    revert with 0, 'No rewards to compound!'
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                nFTBalance[arg1].field_256 = (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + totalStaked < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked = (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + totalStaked
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                emit RewardsCompounded(msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, nFTBalance[arg1].field_256, block.timestamp);
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_96effb75Address)
            staticcall sub_96effb75Address.0x70a08231 with:
                    gas gas_remaining wei
                   args rewardPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.number - lastRewardBlock:
                    if 0 / block.number - lastRewardBlock:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardPoolAddress, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fd50644d += 0 / totalStaked
                lastRewardBlock = block.number
                emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
            else:
                if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not block.number - lastRewardBlock:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd50644d += 0 / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                else:
                    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += 0 / totalStaked
                    else:
                        if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
            if not nFTBalance[arg1].field_256:
                if nFTBalance[arg1].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -nFTBalance[arg1].field_768 <= 0:
                    revert with 0, 'No rewards to compound!'
                if -nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                nFTBalance[arg1].field_256 -= nFTBalance[arg1].field_768
                if -nFTBalance[arg1].field_768 + totalStaked < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked -= nFTBalance[arg1].field_768
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                emit RewardsCompounded(msg.sender, -nFTBalance[arg1].field_768, arg1, nFTBalance[arg1].field_256, block.timestamp);
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 <= 0:
                    revert with 0, 'No rewards to compound!'
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                nFTBalance[arg1].field_256 = (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + nFTBalance[arg1].field_256
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + totalStaked < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked = (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + totalStaked
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                emit RewardsCompounded(msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, nFTBalance[arg1].field_256, block.timestamp);
}

function decrementNFTValue(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    if bool(nFTBalance[arg1].field_512) != 1:
        revert with 0, 'Token not in circulation'
    if nFTBalance[arg1].field_256 < arg2:
        revert with 0, 'Not enough stake in NFT'
    if block.number <= lastRewardBlock:
        if not nFTBalance[arg1].field_256:
            if arg2 > nFTBalance[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            nFTBalance[arg1].field_256 -= arg2
            if not nFTBalance[arg1].field_256:
                nFTBalance[arg1].field_768 = 0
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
        else:
            if not nFTBalance[arg1].field_256:
                if nFTBalance[arg1].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -nFTBalance[arg1].field_768:
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), -nFTBalance[arg1].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xfe56253d: ext_call.return_data[12 len 20], -nFTBalance[arg1].field_768, arg1, block.timestamp
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768:
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xfe56253d: ext_call.return_data[12 len 20], (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
            if arg2 > nFTBalance[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            nFTBalance[arg1].field_256 -= arg2
            if not nFTBalance[arg1].field_256:
                nFTBalance[arg1].field_768 = 0
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
    else:
        if not totalStaked:
            lastRewardBlock = block.number
            if not nFTBalance[arg1].field_256:
                if arg2 > nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                nFTBalance[arg1].field_256 -= arg2
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            else:
                if not nFTBalance[arg1].field_256:
                    if nFTBalance[arg1].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -nFTBalance[arg1].field_768:
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), -nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: ext_call.return_data[12 len 20], -nFTBalance[arg1].field_768, arg1, block.timestamp
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768:
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: ext_call.return_data[12 len 20], (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
                if arg2 > nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                nFTBalance[arg1].field_256 -= arg2
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_96effb75Address)
            staticcall sub_96effb75Address.0x70a08231 with:
                    gas gas_remaining wei
                   args rewardPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.number - lastRewardBlock:
                    if 0 / block.number - lastRewardBlock:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardPoolAddress, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fd50644d += 0 / totalStaked
                lastRewardBlock = block.number
                emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
            else:
                if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not block.number - lastRewardBlock:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd50644d += 0 / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                else:
                    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += 0 / totalStaked
                    else:
                        if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
            if not nFTBalance[arg1].field_256:
                if arg2 > nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                nFTBalance[arg1].field_256 -= arg2
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            else:
                if not nFTBalance[arg1].field_256:
                    if nFTBalance[arg1].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -nFTBalance[arg1].field_768:
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), -nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: ext_call.return_data[12 len 20], -nFTBalance[arg1].field_768, arg1, block.timestamp
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768:
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: ext_call.return_data[12 len 20], (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
                if arg2 > nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                nFTBalance[arg1].field_256 -= arg2
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
}

function incrementNFTValue(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Only Platform'
    if bool(nFTBalance[arg1].field_512) != 1:
        revert with 0, 'Token not in circulation'
    if block.number <= lastRewardBlock:
        if not nFTBalance[arg1].field_256:
            if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                revert with 0, 'SafeMath: addition overflow'
            nFTBalance[arg1].field_256 += arg2
            if not nFTBalance[arg1].field_256:
                nFTBalance[arg1].field_768 = 0
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
        else:
            if not nFTBalance[arg1].field_256:
                if nFTBalance[arg1].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -nFTBalance[arg1].field_768:
                    if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    nFTBalance[arg1].field_256 += arg2
                    if not nFTBalance[arg1].field_256:
                        nFTBalance[arg1].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                else:
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), -nFTBalance[arg1].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xfe56253d: ext_call.return_data[12 len 20], -nFTBalance[arg1].field_768, arg1, block.timestamp
                    if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    nFTBalance[arg1].field_256 += arg2
                    if not nFTBalance[arg1].field_256:
                        nFTBalance[arg1].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                            revert with 0, 
                                        32,
                                        33,
                                        0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        Mask(216, 0, block.timestamp),
                                        mem[352 len 4]
                        nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768:
                    if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    nFTBalance[arg1].field_256 += arg2
                    if not nFTBalance[arg1].field_256:
                        nFTBalance[arg1].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                else:
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0xfe56253d: ext_call.return_data[12 len 20], (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
                    if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    nFTBalance[arg1].field_256 += arg2
                    if not nFTBalance[arg1].field_256:
                        nFTBalance[arg1].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                            revert with 0, 
                                        32,
                                        33,
                                        0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        Mask(216, 0, block.timestamp),
                                        mem[352 len 4]
                        nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
    else:
        if not totalStaked:
            lastRewardBlock = block.number
            if not nFTBalance[arg1].field_256:
                if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                nFTBalance[arg1].field_256 += arg2
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            else:
                if not nFTBalance[arg1].field_256:
                    if nFTBalance[arg1].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -nFTBalance[arg1].field_768:
                        if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[arg1].field_256 += arg2
                        if not nFTBalance[arg1].field_256:
                            nFTBalance[arg1].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                    else:
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), -nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: ext_call.return_data[12 len 20], -nFTBalance[arg1].field_768, arg1, block.timestamp
                        if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[arg1].field_256 += arg2
                        if not nFTBalance[arg1].field_256:
                            nFTBalance[arg1].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            Mask(216, 0, block.timestamp),
                                            mem[352 len 4]
                            nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768:
                        if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[arg1].field_256 += arg2
                        if not nFTBalance[arg1].field_256:
                            nFTBalance[arg1].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                    else:
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: ext_call.return_data[12 len 20], (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
                        if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[arg1].field_256 += arg2
                        if not nFTBalance[arg1].field_256:
                            nFTBalance[arg1].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            Mask(216, 0, block.timestamp),
                                            mem[352 len 4]
                            nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_96effb75Address)
            staticcall sub_96effb75Address.0x70a08231 with:
                    gas gas_remaining wei
                   args rewardPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.number - lastRewardBlock:
                    if 0 / block.number - lastRewardBlock:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardPoolAddress, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fd50644d += 0 / totalStaked
                lastRewardBlock = block.number
                emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
            else:
                if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not block.number - lastRewardBlock:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd50644d += 0 / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                else:
                    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += 0 / totalStaked
                    else:
                        if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
            if not nFTBalance[arg1].field_256:
                if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                nFTBalance[arg1].field_256 += arg2
                if not nFTBalance[arg1].field_256:
                    nFTBalance[arg1].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
            else:
                if not nFTBalance[arg1].field_256:
                    if nFTBalance[arg1].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -nFTBalance[arg1].field_768:
                        if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[arg1].field_256 += arg2
                        if not nFTBalance[arg1].field_256:
                            nFTBalance[arg1].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                    else:
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), -nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: ext_call.return_data[12 len 20], -nFTBalance[arg1].field_768, arg1, block.timestamp
                        if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[arg1].field_256 += arg2
                        if not nFTBalance[arg1].field_256:
                            nFTBalance[arg1].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            Mask(216, 0, block.timestamp),
                                            mem[608 len 4]
                            nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                else:
                    if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768:
                        if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[arg1].field_256 += arg2
                        if not nFTBalance[arg1].field_256:
                            nFTBalance[arg1].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
                    else:
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: ext_call.return_data[12 len 20], (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
                        if arg2 + nFTBalance[arg1].field_256 < nFTBalance[arg1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[arg1].field_256 += arg2
                        if not nFTBalance[arg1].field_256:
                            nFTBalance[arg1].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            Mask(216, 0, block.timestamp),
                                            mem[608 len 4]
                            nFTBalance[arg1].field_768 = sub_fd50644d * nFTBalance[arg1].field_256 / 10^18
}

function claimAllRewards() payable {
    mem[64] = 96
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if ext_call.success:
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'User has no stake'
        mem[100] = msg.sender
        require ext_code.size(stakingNFTAddress)
        staticcall stakingNFTAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        s = var70001
        while ext_call.success:
            require return_data.size >= 32
            if s >= mem[mem[64]]:
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x6352211e with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                revert with 0, 'User is not owner of token'
            mem[0] = ext_call.return_data[0]
            mem[32] = 10
            if bool(nFTBalance[ext_call.return_data[0]].field_512) != 1:
                revert with 0, 'Stake has already been withdrawn'
            if block.number <= lastRewardBlock:
                mem[0] = ext_call.return_data[0]
                mem[32] = 10
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    _1155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1155] = 26
                    mem[_1155 + 32] = 'SafeMath: division by zero'
                    _1166 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1166] = 30
                    mem[_1166 + 32] = 'SafeMath: subtraction overflow'
                    if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _1166 + 32]
                            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                            mem[100] = msg.sender
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                    if -nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                        revert with 0, 'No rewards to claim!'
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        _1244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1244] = 26
                        mem[_1244 + 32] = 'SafeMath: division by zero'
                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1251 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1251] = 26
                        mem[_1251 + 32] = 'SafeMath: division by zero'
                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    mem[0] = ext_call.return_data[0]
                    mem[mem[64] + 32] = -nFTBalance[ext_call.return_data[0]].field_768
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = block.timestamp
                    emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                else:
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1162 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1162] = 26
                    mem[_1162 + 32] = 'SafeMath: division by zero'
                    _1171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1171] = 30
                    mem[_1171 + 32] = 'SafeMath: subtraction overflow'
                    if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _1171 + 32]
                            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                            mem[100] = msg.sender
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                    if (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                        revert with 0, 'No rewards to claim!'
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        _1250 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1250] = 26
                        mem[_1250 + 32] = 'SafeMath: division by zero'
                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1258 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1258] = 26
                        mem[_1258 + 32] = 'SafeMath: division by zero'
                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    mem[0] = ext_call.return_data[0]
                    mem[mem[64] + 32] = (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = block.timestamp
                    emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
            else:
                if not totalStaked:
                    lastRewardBlock = block.number
                    mem[0] = ext_call.return_data[0]
                    mem[32] = 10
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        _1160 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1160] = 26
                        mem[_1160 + 32] = 'SafeMath: division by zero'
                        _1169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1169] = 30
                        mem[_1169 + 32] = 'SafeMath: subtraction overflow'
                        if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _1169 + 32]
                                mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                mem[100] = msg.sender
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                        if -nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                            revert with 0, 'No rewards to claim!'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            _1245 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1245] = 26
                            mem[_1245 + 32] = 'SafeMath: division by zero'
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1253] = 26
                            mem[_1253 + 32] = 'SafeMath: division by zero'
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        mem[0] = ext_call.return_data[0]
                        mem[mem[64] + 32] = -nFTBalance[ext_call.return_data[0]].field_768
                        mem[mem[64] + 64] = ext_call.return_data[0]
                        mem[mem[64] + 96] = block.timestamp
                        emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1164 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1164] = 26
                        mem[_1164 + 32] = 'SafeMath: division by zero'
                        _1175 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1175] = 30
                        mem[_1175 + 32] = 'SafeMath: subtraction overflow'
                        if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _1175 + 32]
                                mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                mem[100] = msg.sender
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len -mem[64] + 128]
                                mem[mem[64]] = ext_call.return_data[0]
                                idx = idx + 32
                                continue 
                            revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                        if (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                            revert with 0, 'No rewards to claim!'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            _1252 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1252] = 26
                            mem[_1252 + 32] = 'SafeMath: division by zero'
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1259 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1259] = 26
                            mem[_1259 + 32] = 'SafeMath: division by zero'
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        mem[0] = ext_call.return_data[0]
                        mem[mem[64] + 32] = (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                        mem[mem[64] + 64] = ext_call.return_data[0]
                        mem[mem[64] + 96] = block.timestamp
                        emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                else:
                    _1140 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1140] = 30
                    mem[_1140 + 32] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _1140 + 32]
                            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                            mem[100] = msg.sender
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len -mem[64] + 128]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 32
                            continue 
                        revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                    require ext_code.size(sub_96effb75Address)
                    staticcall sub_96effb75Address.0x70a08231 with:
                            gas gas_remaining wei
                           args rewardPoolAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        _1170 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1170] = 26
                        mem[_1170 + 32] = 'SafeMath: division by zero'
                        _1222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1222] = 26
                        mem[_1222 + 32] = 'SafeMath: division by zero'
                        if not block.number - lastRewardBlock:
                            mem[mem[64] + 68] = 0
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1300 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1300] = 26
                            mem[_1300 + 32] = 'SafeMath: division by zero'
                            if not totalStaked:
                                _1307 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1307 + 68] = mem[idx + _1300 + 32]
                                    mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                    mem[100] = msg.sender
                                    require ext_code.size(stakingNFTAddress)
                                    staticcall stakingNFTAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len -mem[64] + 128]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                mem[_1307 + 68] = mem[_1307 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1307 + -mem[64] + 100
                            if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fd50644d += 0 / totalStaked
                            lastRewardBlock = block.number
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = block.timestamp
                            emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 10
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                _1372 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1372] = 26
                                mem[_1372 + 32] = 'SafeMath: division by zero'
                                _1390 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1390] = 30
                                mem[_1390 + 32] = 'SafeMath: subtraction overflow'
                                if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _1390 + 32]
                                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                        mem[100] = msg.sender
                                        require ext_code.size(stakingNFTAddress)
                                        staticcall stakingNFTAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                if -nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                    revert with 0, 'No rewards to claim!'
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    _1562 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1562] = 26
                                    mem[_1562 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1573 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1573] = 26
                                    mem[_1573 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                mem[0] = ext_call.return_data[0]
                                mem[mem[64] + 32] = -nFTBalance[ext_call.return_data[0]].field_768
                                mem[mem[64] + 64] = ext_call.return_data[0]
                                mem[mem[64] + 96] = block.timestamp
                                emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1380 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1380] = 26
                                mem[_1380 + 32] = 'SafeMath: division by zero'
                                _1394 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1394] = 30
                                mem[_1394 + 32] = 'SafeMath: subtraction overflow'
                                if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _1394 + 32]
                                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                        mem[100] = msg.sender
                                        require ext_code.size(stakingNFTAddress)
                                        staticcall stakingNFTAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                if (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                    revert with 0, 'No rewards to claim!'
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    _1572 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1572] = 26
                                    mem[_1572 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1585 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1585] = 26
                                    mem[_1585 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                mem[0] = ext_call.return_data[0]
                                mem[mem[64] + 32] = (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                mem[mem[64] + 64] = ext_call.return_data[0]
                                mem[mem[64] + 96] = block.timestamp
                                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                        else:
                            if 0 / block.number - lastRewardBlock:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            mem[mem[64] + 68] = 0
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1306 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1306] = 26
                            mem[_1306 + 32] = 'SafeMath: division by zero'
                            if not totalStaked:
                                _1316 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1316 + 68] = mem[idx + _1306 + 32]
                                    mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                    mem[100] = msg.sender
                                    require ext_code.size(stakingNFTAddress)
                                    staticcall stakingNFTAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len -mem[64] + 128]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                mem[_1316 + 68] = mem[_1316 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1316 + -mem[64] + 100
                            if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fd50644d += 0 / totalStaked
                            lastRewardBlock = block.number
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = block.timestamp
                            emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 10
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                _1379 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1379] = 26
                                mem[_1379 + 32] = 'SafeMath: division by zero'
                                _1393 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1393] = 30
                                mem[_1393 + 32] = 'SafeMath: subtraction overflow'
                                if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _1393 + 32]
                                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                        mem[100] = msg.sender
                                        require ext_code.size(stakingNFTAddress)
                                        staticcall stakingNFTAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                if -nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                    revert with 0, 'No rewards to claim!'
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    _1571 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1571] = 26
                                    mem[_1571 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1584 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1584] = 26
                                    mem[_1584 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                mem[0] = ext_call.return_data[0]
                                mem[mem[64] + 32] = -nFTBalance[ext_call.return_data[0]].field_768
                                mem[mem[64] + 64] = ext_call.return_data[0]
                                mem[mem[64] + 96] = block.timestamp
                                emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1385 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1385] = 26
                                mem[_1385 + 32] = 'SafeMath: division by zero'
                                _1404 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1404] = 30
                                mem[_1404 + 32] = 'SafeMath: subtraction overflow'
                                if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _1404 + 32]
                                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                        mem[100] = msg.sender
                                        require ext_code.size(stakingNFTAddress)
                                        staticcall stakingNFTAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                if (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                    revert with 0, 'No rewards to claim!'
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    _1583 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1583] = 26
                                    mem[_1583 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1594 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1594] = 26
                                    mem[_1594 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                mem[0] = ext_call.return_data[0]
                                mem[mem[64] + 32] = (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                mem[mem[64] + 64] = ext_call.return_data[0]
                                mem[mem[64] + 96] = block.timestamp
                                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                    else:
                        if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1180 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1180] = 26
                        mem[_1180 + 32] = 'SafeMath: division by zero'
                        _1234 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1234] = 26
                        mem[_1234 + 32] = 'SafeMath: division by zero'
                        if not block.number - lastRewardBlock:
                            mem[mem[64] + 68] = 0
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1305 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1305] = 26
                            mem[_1305 + 32] = 'SafeMath: division by zero'
                            if not totalStaked:
                                _1313 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1313 + 68] = mem[idx + _1305 + 32]
                                    mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                    mem[100] = msg.sender
                                    require ext_code.size(stakingNFTAddress)
                                    staticcall stakingNFTAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len -mem[64] + 128]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    idx = idx + 32
                                    continue 
                                mem[_1313 + 68] = mem[_1313 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1313 + -mem[64] + 100
                            if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fd50644d += 0 / totalStaked
                            lastRewardBlock = block.number
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = block.timestamp
                            emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                            mem[0] = ext_call.return_data[0]
                            mem[32] = 10
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                _1378 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1378] = 26
                                mem[_1378 + 32] = 'SafeMath: division by zero'
                                _1392 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1392] = 30
                                mem[_1392 + 32] = 'SafeMath: subtraction overflow'
                                if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _1392 + 32]
                                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                        mem[100] = msg.sender
                                        require ext_code.size(stakingNFTAddress)
                                        staticcall stakingNFTAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                if -nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                    revert with 0, 'No rewards to claim!'
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    _1570 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1570] = 26
                                    mem[_1570 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1582 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1582] = 26
                                    mem[_1582 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                mem[0] = ext_call.return_data[0]
                                mem[mem[64] + 32] = -nFTBalance[ext_call.return_data[0]].field_768
                                mem[mem[64] + 64] = ext_call.return_data[0]
                                mem[mem[64] + 96] = block.timestamp
                                emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1384 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1384] = 26
                                mem[_1384 + 32] = 'SafeMath: division by zero'
                                _1400 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1400] = 30
                                mem[_1400 + 32] = 'SafeMath: subtraction overflow'
                                if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _1400 + 32]
                                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                        mem[100] = msg.sender
                                        require ext_code.size(stakingNFTAddress)
                                        staticcall stakingNFTAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                if (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                    revert with 0, 'No rewards to claim!'
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    _1581 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1581] = 26
                                    mem[_1581 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1593 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1593] = 26
                                    mem[_1593 + 32] = 'SafeMath: division by zero'
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                mem[0] = ext_call.return_data[0]
                                mem[mem[64] + 32] = (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                mem[mem[64] + 64] = ext_call.return_data[0]
                                mem[mem[64] + 96] = block.timestamp
                                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                        else:
                            if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            mem[mem[64] + 68] = (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, this.address, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                                _1312 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1312] = 26
                                mem[_1312 + 32] = 'SafeMath: division by zero'
                                if not totalStaked:
                                    _1323 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1323 + 68] = mem[idx + _1312 + 32]
                                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                        mem[100] = msg.sender
                                        require ext_code.size(stakingNFTAddress)
                                        staticcall stakingNFTAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    mem[_1323 + 68] = mem[_1323 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1323 + -mem[64] + 100
                                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_fd50644d += 0 / totalStaked
                                lastRewardBlock = block.number
                                mem[mem[64] + 32] = (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                                mem[mem[64] + 64] = block.timestamp
                                emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
                                mem[0] = ext_call.return_data[0]
                                mem[32] = 10
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    _1383 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1383] = 26
                                    mem[_1383 + 32] = 'SafeMath: division by zero'
                                    _1399 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1399] = 30
                                    mem[_1399 + 32] = 'SafeMath: subtraction overflow'
                                    if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _1399 + 32]
                                            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                            mem[100] = msg.sender
                                            require ext_code.size(stakingNFTAddress)
                                            staticcall stakingNFTAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len -mem[64] + 128]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            idx = idx + 32
                                            continue 
                                        revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                    if -nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                        revert with 0, 'No rewards to claim!'
                                    require ext_code.size(sub_96effb75Address)
                                    call sub_96effb75Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not nFTBalance[ext_call.return_data[0]].field_256:
                                        _1580 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1580] = 26
                                        mem[_1580 + 32] = 'SafeMath: division by zero'
                                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                                    else:
                                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1592 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1592] = 26
                                        mem[_1592 + 32] = 'SafeMath: division by zero'
                                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                    mem[0] = ext_call.return_data[0]
                                    mem[mem[64] + 32] = -nFTBalance[ext_call.return_data[0]].field_768
                                    mem[mem[64] + 64] = ext_call.return_data[0]
                                    mem[mem[64] + 96] = block.timestamp
                                    emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1389 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1389] = 26
                                    mem[_1389 + 32] = 'SafeMath: division by zero'
                                    _1419 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1419] = 30
                                    mem[_1419 + 32] = 'SafeMath: subtraction overflow'
                                    if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _1419 + 32]
                                            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                            mem[100] = msg.sender
                                            require ext_code.size(stakingNFTAddress)
                                            staticcall stakingNFTAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len -mem[64] + 128]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            idx = idx + 32
                                            continue 
                                        revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                    if (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                        revert with 0, 'No rewards to claim!'
                                    require ext_code.size(sub_96effb75Address)
                                    call sub_96effb75Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not nFTBalance[ext_call.return_data[0]].field_256:
                                        _1591 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1591] = 26
                                        mem[_1591 + 32] = 'SafeMath: division by zero'
                                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                                    else:
                                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1601 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1601] = 26
                                        mem[_1601 + 32] = 'SafeMath: division by zero'
                                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                    mem[0] = ext_call.return_data[0]
                                    mem[mem[64] + 32] = (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                    mem[mem[64] + 64] = ext_call.return_data[0]
                                    mem[mem[64] + 96] = block.timestamp
                                    emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            else:
                                if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1322 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1322] = 26
                                mem[_1322 + 32] = 'SafeMath: division by zero'
                                if not totalStaked:
                                    _1333 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _1333 + 68] = mem[idx + _1322 + 32]
                                        mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                        mem[100] = msg.sender
                                        require ext_code.size(stakingNFTAddress)
                                        staticcall stakingNFTAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len -mem[64] + 128]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        idx = idx + 32
                                        continue 
                                    mem[_1333 + 68] = mem[_1333 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _1333 + -mem[64] + 100
                                if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_fd50644d += (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked
                                lastRewardBlock = block.number
                                mem[mem[64] + 32] = (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                                mem[mem[64] + 64] = block.timestamp
                                emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
                                mem[0] = ext_call.return_data[0]
                                mem[32] = 10
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    _1388 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1388] = 26
                                    mem[_1388 + 32] = 'SafeMath: division by zero'
                                    _1418 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1418] = 30
                                    mem[_1418 + 32] = 'SafeMath: subtraction overflow'
                                    if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _1418 + 32]
                                            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                            mem[100] = msg.sender
                                            require ext_code.size(stakingNFTAddress)
                                            staticcall stakingNFTAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len -mem[64] + 128]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            idx = idx + 32
                                            continue 
                                        revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                    if -nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                        revert with 0, 'No rewards to claim!'
                                    require ext_code.size(sub_96effb75Address)
                                    call sub_96effb75Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not nFTBalance[ext_call.return_data[0]].field_256:
                                        _1590 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1590] = 26
                                        mem[_1590 + 32] = 'SafeMath: division by zero'
                                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                                    else:
                                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1600 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1600] = 26
                                        mem[_1600 + 32] = 'SafeMath: division by zero'
                                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                    mem[0] = ext_call.return_data[0]
                                    mem[mem[64] + 32] = -nFTBalance[ext_call.return_data[0]].field_768
                                    mem[mem[64] + 64] = ext_call.return_data[0]
                                    mem[mem[64] + 96] = block.timestamp
                                    emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1391 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1391] = 26
                                    mem[_1391 + 32] = 'SafeMath: division by zero'
                                    _1449 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1449] = 30
                                    mem[_1449 + 32] = 'SafeMath: subtraction overflow'
                                    if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _1449 + 32]
                                            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                                            mem[100] = msg.sender
                                            require ext_code.size(stakingNFTAddress)
                                            staticcall stakingNFTAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len -mem[64] + 128]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            idx = idx + 32
                                            continue 
                                        revert with mem[mem[64] len 36], 30, Mask(240, 0, 'SafeMath: subtraction overflow')
                                    if (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768 <= 0:
                                        revert with 0, 'No rewards to claim!'
                                    require ext_code.size(sub_96effb75Address)
                                    call sub_96effb75Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not nFTBalance[ext_call.return_data[0]].field_256:
                                        _1599 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1599] = 26
                                        mem[_1599 + 32] = 'SafeMath: division by zero'
                                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                                    else:
                                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1612 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1612] = 26
                                        mem[_1612 + 32] = 'SafeMath: division by zero'
                                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                                    mem[0] = ext_call.return_data[0]
                                    mem[mem[64] + 32] = (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                    mem[mem[64] + 64] = ext_call.return_data[0]
                                    mem[mem[64] + 96] = block.timestamp
                                    emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len -mem[64] + 128]
            mem[mem[64]] = ext_call.return_data[0]
            s = s + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_c00eaad0(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'User is not owner of token'
    if bool(nFTBalance[arg1].field_512) != 1:
        revert with 0, 'Stake has already been withdrawn'
    if block.number <= lastRewardBlock:
        if not nFTBalance[arg1].field_256:
            if nFTBalance[arg1].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not nFTBalance[arg1].field_256 / 100:
                if not nFTBalance[arg1].field_256 / 100:
                    if -nFTBalance[arg1].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[arg1].field_256 / 100:
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 0
                    else:
                        if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                else:
                    if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[arg1].field_256 / 100:
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 0
                    else:
                        if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit WithdrawCompleted(msg.sender, 0, arg1, block.timestamp);
            else:
                if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not nFTBalance[arg1].field_256 / 100:
                    if -nFTBalance[arg1].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[arg1].field_256 / 100:
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 0
                    else:
                        if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                else:
                    if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[arg1].field_256 / 100:
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 0
                    else:
                        if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit WithdrawCompleted(msg.sender, 95 * nFTBalance[arg1].field_256 / 100, arg1, block.timestamp);
            emit 0xfe56253d: msg.sender, -nFTBalance[arg1].field_768, arg1, block.timestamp
        else:
            if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not nFTBalance[arg1].field_256 / 100:
                if not nFTBalance[arg1].field_256 / 100:
                    if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[arg1].field_256 / 100:
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 0
                    else:
                        if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                else:
                    if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[arg1].field_256 / 100:
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 0
                    else:
                        if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit WithdrawCompleted(msg.sender, 0, arg1, block.timestamp);
            else:
                if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not nFTBalance[arg1].field_256 / 100:
                    if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[arg1].field_256 / 100:
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 0
                    else:
                        if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                else:
                    if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[arg1].field_256 / 100:
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 0
                    else:
                        if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        nFTBalance[arg1].field_256 = 0
                        nFTBalance[arg1].field_512 = 0
                        if nFTBalance[arg1].field_256 > totalStaked:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalStaked -= nFTBalance[arg1].field_256
                        require ext_code.size(stakingNFTAddress)
                        call stakingNFTAddress.0x86de6c65 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stakingAddress.0x42966c68 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                        if bool(ext_call.success) != 1:
                            revert with 0, 'mint call failed'
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit WithdrawCompleted(msg.sender, 95 * nFTBalance[arg1].field_256 / 100, arg1, block.timestamp);
            emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
    else:
        if not totalStaked:
            lastRewardBlock = block.number
            if not nFTBalance[arg1].field_256:
                if nFTBalance[arg1].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not nFTBalance[arg1].field_256 / 100:
                    if not nFTBalance[arg1].field_256 / 100:
                        if -nFTBalance[arg1].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    else:
                        if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit WithdrawCompleted(msg.sender, 0, arg1, block.timestamp);
                else:
                    if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not nFTBalance[arg1].field_256 / 100:
                        if -nFTBalance[arg1].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    else:
                        if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit WithdrawCompleted(msg.sender, 95 * nFTBalance[arg1].field_256 / 100, arg1, block.timestamp);
                emit 0xfe56253d: msg.sender, -nFTBalance[arg1].field_768, arg1, block.timestamp
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not nFTBalance[arg1].field_256 / 100:
                    if not nFTBalance[arg1].field_256 / 100:
                        if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    else:
                        if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit WithdrawCompleted(msg.sender, 0, arg1, block.timestamp);
                else:
                    if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not nFTBalance[arg1].field_256 / 100:
                        if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    else:
                        if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[580 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit WithdrawCompleted(msg.sender, 95 * nFTBalance[arg1].field_256 / 100, arg1, block.timestamp);
                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_96effb75Address)
            staticcall sub_96effb75Address.0x70a08231 with:
                    gas gas_remaining wei
                   args rewardPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.number - lastRewardBlock:
                    if 0 / block.number - lastRewardBlock:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardPoolAddress, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fd50644d += 0 / totalStaked
                lastRewardBlock = block.number
                emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
            else:
                if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not block.number - lastRewardBlock:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd50644d += 0 / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                else:
                    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += 0 / totalStaked
                    else:
                        if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
            if not nFTBalance[arg1].field_256:
                if nFTBalance[arg1].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not nFTBalance[arg1].field_256 / 100:
                    if not nFTBalance[arg1].field_256 / 100:
                        if -nFTBalance[arg1].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    else:
                        if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit WithdrawCompleted(msg.sender, 0, arg1, block.timestamp);
                else:
                    if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    if not nFTBalance[arg1].field_256 / 100:
                        if -nFTBalance[arg1].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    else:
                        if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit WithdrawCompleted(msg.sender, 95 * nFTBalance[arg1].field_256 / 100, arg1, block.timestamp);
                emit 0xfe56253d: msg.sender, -nFTBalance[arg1].field_768, arg1, block.timestamp
            else:
                if sub_fd50644d * nFTBalance[arg1].field_256 / nFTBalance[arg1].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if nFTBalance[arg1].field_768 > sub_fd50644d * nFTBalance[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not nFTBalance[arg1].field_256 / 100:
                    if not nFTBalance[arg1].field_256 / 100:
                        if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    else:
                        if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit WithdrawCompleted(msg.sender, 0, arg1, block.timestamp);
                else:
                    if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    if not nFTBalance[arg1].field_256 / 100:
                        if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    else:
                        if 95 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 95:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100) < 95 * nFTBalance[arg1].field_256 / 100:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[arg1].field_256 / 100:
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 0
                        else:
                            if 5 * nFTBalance[arg1].field_256 / 100 / nFTBalance[arg1].field_256 / 100 != 5:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            nFTBalance[arg1].field_256 = 0
                            nFTBalance[arg1].field_512 = 0
                            if nFTBalance[arg1].field_256 > totalStaked:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalStaked -= nFTBalance[arg1].field_256
                            require ext_code.size(stakingNFTAddress)
                            call stakingNFTAddress.0x86de6c65 with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stakingAddress.0x42966c68 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) >> 32, mem[836 len 4]
                            if bool(ext_call.success) != 1:
                                revert with 0, 'mint call failed'
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768 + (95 * nFTBalance[arg1].field_256 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args rewardPoolAddress, 5 * nFTBalance[arg1].field_256 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit WithdrawCompleted(msg.sender, 95 * nFTBalance[arg1].field_256 / 100, arg1, block.timestamp);
                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[arg1].field_256 / 10^18) - nFTBalance[arg1].field_768, arg1, block.timestamp
}

function getTotalRewards(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.mem[var89003 len 4] with:
            gas gas_remaining wei
           args mem[var89003 + 4 len var89004 - 4]
    mem[var89005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var93003 >= mem[var93002]:
        return var93004
    mem[96] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var95001
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.mem[var97003 len 4] with:
            gas gas_remaining wei
           args mem[var97003 + 4 len var97004 - 4]
    mem[var97005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = var103001
    mem[32] = 10
    if block.number <= lastRewardBlock:
        if var56001:
            mem[64] = 160
            mem[96] = 30
            mem[128] = 'SafeMath: subtraction overflow'
            if lastRewardBlock <= block.number:
                mem[160] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                mem[164] = rewardPoolAddress
                require ext_code.size(sub_96effb75Address)
                staticcall sub_96effb75Address.mem[var123003 len 4] with:
                        gas gas_remaining wei
                       args mem[var123003 + 4 len var123004 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
            else:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                mem[196] = mem[var111001]
                _6761 = mem[var111001]
                if not mem[var111001]:
                    if not mem[var111001] % 32:
                        revert with 0, 32, mem[196 len mem[var111001] + 32]
                    mem[floor32(mem[var111001]) + 228] = mem[floor32(mem[var111001]) + -(mem[var111001] % 32) + 260 len mem[var111001] % 32]
                else:
                    mem[228] = mem[var111001 + 32]
                    mem[260 len floor32(_6761 - 1)] = mem[var111001 + 64 len floor32(_6761 - 1)]
                    if not _6761 % 32:
                        revert with 0, 32, mem[196 len _6761 + 32]
                    mem[floor32(_6761) + 228] = mem[floor32(_6761) + -(_6761 % 32) + 260 len _6761 % 32]
                revert with 0, 32, mem[196 len floor32(_6761) + 64]
        else:
            if not var109002:
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                mem[64] = 224
                mem[160] = 30
                mem[192] = 'SafeMath: subtraction overflow'
                s = var109001
                s = var109002
                s = var109006
                s = var109008
                s = var109009
                s = var109011
                s = var109014
                s = var109015
                while var117004 <= var117001 / 10^18:
                    if (var117001 / 10^18) - var117004 + var117013 < var117013:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var117012 + 1 >= ext_call.return_data[0]:
                        return ((var117001 / 10^18) - var117004 + var117013)
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = var117012 + 1
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(arg1), var117012 + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = ext_call.return_data[0]
                    mem[32] = 10
                    if block.number <= lastRewardBlock:
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            s = sub_fd50644d
                            s = nFTBalance[ext_call.return_data[0]].field_256
                            s = nFTBalance[ext_call.return_data[0]].field_768
                            s = sub_fd50644d
                            s = sha3(ext_call.return_data[0], 10)
                            s = ext_call.return_data[0]
                            s = var117012 + 1
                            s = (var117001 / 10^18) - var117004 + var117013
                            continue 
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        var117001 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                        var117004 = nFTBalance[ext_call.return_data[0]].field_768
                        var117006 = sub_fd50644d
                        var117007 = sha3(ext_call.return_data[0], 10)
                        var117009 = ext_call.return_data[0]
                        var117012 = var117012 + 1
                        var117013 = (var117001 / 10^18) - var117004 + var117013
                        continue 
                    if not totalStaked:
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            s = sub_fd50644d
                            s = nFTBalance[ext_call.return_data[0]].field_256
                            s = nFTBalance[ext_call.return_data[0]].field_768
                            s = sub_fd50644d
                            s = sha3(ext_call.return_data[0], 10)
                            s = ext_call.return_data[0]
                            s = var117012 + 1
                            s = (var117001 / 10^18) - var117004 + var117013
                            continue 
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        var117001 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                        var117004 = nFTBalance[ext_call.return_data[0]].field_768
                        var117006 = sub_fd50644d
                        var117007 = sha3(ext_call.return_data[0], 10)
                        var117009 = ext_call.return_data[0]
                        var117012 = var117012 + 1
                        var117013 = (var117001 / 10^18) - var117004 + var117013
                        continue 
                    _9208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9208] = 30
                    mem[_9208 + 32] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        _9214 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + _9214 + 68] = mem[idx + _9208 + 32]
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            idx = idx + 32
                            continue 
                        mem[_9214 + 68] = mem[_9214 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _9214 + -mem[64] + 100
                    mem[mem[64] + 4] = rewardPoolAddress
                    require ext_code.size(sub_96effb75Address)
                    staticcall sub_96effb75Address.0x70a08231 with:
                            gas gas_remaining wei
                           args rewardPoolAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        _9321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9321] = 26
                        mem[_9321 + 32] = 'SafeMath: division by zero'
                        _9341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9341] = 26
                        mem[_9341 + 32] = 'SafeMath: division by zero'
                        if not block.number - lastRewardBlock:
                            _9473 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9473] = 26
                            mem[_9473 + 32] = 'SafeMath: division by zero'
                            if not totalStaked:
                                _9499 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _9499 + 68] = mem[idx + _9473 + 32]
                                    mem[64] = mem[64] + 64
                                    mem[96] = 26
                                    mem[128] = 'SafeMath: division by zero'
                                    mem[64] = mem[64] + 64
                                    mem[160] = 30
                                    mem[192] = 'SafeMath: subtraction overflow'
                                    idx = idx + 32
                                    continue 
                                mem[_9499 + 68] = mem[_9499 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _9499 + -mem[64] + 100
                        else:
                            if 0 / block.number - lastRewardBlock:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _9498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9498] = 26
                            mem[_9498 + 32] = 'SafeMath: division by zero'
                            if not totalStaked:
                                _9531 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _9531 + 68] = mem[idx + _9498 + 32]
                                    mem[64] = mem[64] + 64
                                    mem[96] = 26
                                    mem[128] = 'SafeMath: division by zero'
                                    mem[64] = mem[64] + 64
                                    mem[160] = 30
                                    mem[192] = 'SafeMath: subtraction overflow'
                                    idx = idx + 32
                                    continue 
                                mem[_9531 + 68] = mem[_9531 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _9531 + -mem[64] + 100
                        ('stor', ('name', 'totalStaked', 9))
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            s = (0 / totalStaked) + sub_fd50644d
                            s = nFTBalance[ext_call.return_data[0]].field_256
                            s = nFTBalance[ext_call.return_data[0]].field_768
                            s = (0 / totalStaked) + sub_fd50644d
                            s = sha3(ext_call.return_data[0], 10)
                            s = ext_call.return_data[0]
                            s = var117012 + 1
                            s = (var117001 / 10^18) - var117004 + var117013
                            continue 
                        if (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256) / nFTBalance[ext_call.return_data[0]].field_256 != (0 / totalStaked) + sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        var117001 = (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256)
                        var117004 = nFTBalance[ext_call.return_data[0]].field_768
                        var117006 = (0 / totalStaked) + sub_fd50644d
                        var117007 = sha3(ext_call.return_data[0], 10)
                        var117009 = ext_call.return_data[0]
                        var117012 = var117012 + 1
                        var117013 = (var117001 / 10^18) - var117004 + var117013
                        continue 
                    if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _9330 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9330] = 26
                    mem[_9330 + 32] = 'SafeMath: division by zero'
                    _9348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9348] = 26
                    mem[_9348 + 32] = 'SafeMath: division by zero'
                    if not block.number - lastRewardBlock:
                        _9497 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9497] = 26
                        mem[_9497 + 32] = 'SafeMath: division by zero'
                        if not totalStaked:
                            _9528 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _9528 + 68] = mem[idx + _9497 + 32]
                                mem[64] = mem[64] + 64
                                mem[96] = 26
                                mem[128] = 'SafeMath: division by zero'
                                mem[64] = mem[64] + 64
                                mem[160] = 30
                                mem[192] = 'SafeMath: subtraction overflow'
                                idx = idx + 32
                                continue 
                            mem[_9528 + 68] = mem[_9528 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _9528 + -mem[64] + 100
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            s = (0 / totalStaked) + sub_fd50644d
                            s = nFTBalance[ext_call.return_data[0]].field_256
                            s = nFTBalance[ext_call.return_data[0]].field_768
                            s = (0 / totalStaked) + sub_fd50644d
                            s = sha3(ext_call.return_data[0], 10)
                            s = ext_call.return_data[0]
                            s = var117012 + 1
                            s = (var117001 / 10^18) - var117004 + var117013
                            continue 
                        if (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256) / nFTBalance[ext_call.return_data[0]].field_256 != (0 / totalStaked) + sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        var117001 = (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256)
                        var117004 = nFTBalance[ext_call.return_data[0]].field_768
                        var117006 = (0 / totalStaked) + sub_fd50644d
                        var117007 = sha3(ext_call.return_data[0], 10)
                        var117009 = ext_call.return_data[0]
                        var117012 = var117012 + 1
                        var117013 = (var117001 / 10^18) - var117004 + var117013
                        continue 
                    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                        _9527 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9527] = 26
                        mem[_9527 + 32] = 'SafeMath: division by zero'
                        if not totalStaked:
                            _9567 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _9567 + 68] = mem[idx + _9527 + 32]
                                mem[64] = mem[64] + 64
                                mem[96] = 26
                                mem[128] = 'SafeMath: division by zero'
                                mem[64] = mem[64] + 64
                                mem[160] = 30
                                mem[192] = 'SafeMath: subtraction overflow'
                                idx = idx + 32
                                continue 
                            mem[_9567 + 68] = mem[_9567 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _9567 + -mem[64] + 100
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            s = (0 / totalStaked) + sub_fd50644d
                            s = nFTBalance[ext_call.return_data[0]].field_256
                            s = nFTBalance[ext_call.return_data[0]].field_768
                            s = (0 / totalStaked) + sub_fd50644d
                            s = sha3(ext_call.return_data[0], 10)
                            s = ext_call.return_data[0]
                            s = var117012 + 1
                            s = (var117001 / 10^18) - var117004 + var117013
                            continue 
                        if (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256) / nFTBalance[ext_call.return_data[0]].field_256 != (0 / totalStaked) + sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        var117001 = (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256)
                        var117004 = nFTBalance[ext_call.return_data[0]].field_768
                        var117006 = (0 / totalStaked) + sub_fd50644d
                        var117007 = sha3(ext_call.return_data[0], 10)
                        var117009 = ext_call.return_data[0]
                        var117012 = var117012 + 1
                        var117013 = (var117001 / 10^18) - var117004 + var117013
                        continue 
                    if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _9566 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9566] = 26
                    mem[_9566 + 32] = 'SafeMath: division by zero'
                    if not totalStaked:
                        _9610 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _9610 + 68] = mem[idx + _9566 + 32]
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            idx = idx + 32
                            continue 
                        mem[_9610 + 68] = mem[_9610 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _9610 + -mem[64] + 100
                    if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        s = ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d
                        s = nFTBalance[ext_call.return_data[0]].field_256
                        s = nFTBalance[ext_call.return_data[0]].field_768
                        s = ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d
                        s = sha3(ext_call.return_data[0], 10)
                        s = ext_call.return_data[0]
                        s = var117012 + 1
                        s = (var117001 / 10^18) - var117004 + var117013
                        continue 
                    if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256) / nFTBalance[ext_call.return_data[0]].field_256 != ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    var117001 = ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256)
                    var117004 = nFTBalance[ext_call.return_data[0]].field_768
                    var117006 = ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d
                    var117007 = sha3(ext_call.return_data[0], 10)
                    var117009 = ext_call.return_data[0]
                    var117012 = var117012 + 1
                    var117013 = (var117001 / 10^18) - var117004 + var117013
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[160]
                _8860 = mem[160]
                if not mem[160]:
                    if not mem[160] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[160] + 32]
                    mem[floor32(mem[160]) + mem[64] + 68] = mem[floor32(mem[160]) + mem[64] + -(mem[160] % 32) + 100 len mem[160] % 32]
                else:
                    mem[mem[64] + 68] = mem[192]
                    mem[mem[64] + 100 len floor32(_8860 - 1)] = mem[224 len floor32(_8860 - 1)]
                    if not _8860 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _8860 + 32]
                    mem[floor32(_8860) + mem[64] + 68] = mem[floor32(_8860) + mem[64] + -(_8860 % 32) + 100 len _8860 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_8860) + 64]
            require var113003
            if var115001 / var115002 != var115003:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[64] = 224
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            s = var117001
            t = var117007
            u = var117009
            u = var117010
            u = var117012
            u = var117015
            v = var117016
            while t <= s / 10^18:
                if (s / 10^18) - t + v < v:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if u + 1 >= ext_call.return_data[0]:
                    return ((s / 10^18) - t + v)
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = u + 1
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(arg1), u + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[0]
                mem[32] = 10
                if block.number <= lastRewardBlock:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        s = 0
                        t = nFTBalance[ext_call.return_data[0]].field_768
                        u = sub_fd50644d
                        u = sha3(ext_call.return_data[0], 10)
                        u = ext_call.return_data[0]
                        u = u + 1
                        v = (s / 10^18) - t + v
                        continue 
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    s = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if not totalStaked:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        s = 0
                        t = nFTBalance[ext_call.return_data[0]].field_768
                        u = sub_fd50644d
                        u = sha3(ext_call.return_data[0], 10)
                        u = ext_call.return_data[0]
                        u = u + 1
                        v = (s / 10^18) - t + v
                        continue 
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    s = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                _11018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11018] = 30
                mem[_11018 + 32] = 'SafeMath: subtraction overflow'
                if lastRewardBlock > block.number:
                    _11022 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + _11022 + 68] = mem[idx + _11018 + 32]
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        idx = idx + 32
                        continue 
                    mem[_11022 + 68] = mem[_11022 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _11022 + -mem[64] + 100
                mem[mem[64] + 4] = rewardPoolAddress
                require ext_code.size(sub_96effb75Address)
                staticcall sub_96effb75Address.0x70a08231 with:
                        gas gas_remaining wei
                       args rewardPoolAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    _11102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11102] = 26
                    mem[_11102 + 32] = 'SafeMath: division by zero'
                    _11118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11118] = 26
                    mem[_11118 + 32] = 'SafeMath: division by zero'
                    if not block.number - lastRewardBlock:
                        _11261 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11261] = 26
                        mem[_11261 + 32] = 'SafeMath: division by zero'
                        if not totalStaked:
                            _11282 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _11282 + 68] = mem[idx + _11261 + 32]
                                mem[64] = mem[64] + 64
                                mem[96] = 26
                                mem[128] = 'SafeMath: division by zero'
                                mem[64] = mem[64] + 64
                                mem[160] = 30
                                mem[192] = 'SafeMath: subtraction overflow'
                                idx = idx + 32
                                continue 
                            mem[_11282 + 68] = mem[_11282 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _11282 + -mem[64] + 100
                    else:
                        if 0 / block.number - lastRewardBlock:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _11281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11281] = 26
                        mem[_11281 + 32] = 'SafeMath: division by zero'
                        if not totalStaked:
                            _11310 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _11310 + 68] = mem[idx + _11281 + 32]
                                mem[64] = mem[64] + 64
                                mem[96] = 26
                                mem[128] = 'SafeMath: division by zero'
                                mem[64] = mem[64] + 64
                                mem[160] = 30
                                mem[192] = 'SafeMath: subtraction overflow'
                                idx = idx + 32
                                continue 
                            mem[_11310 + 68] = mem[_11310 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _11310 + -mem[64] + 100
                    ('stor', ('name', 'totalStaked', 9))
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        s = 0
                        t = nFTBalance[ext_call.return_data[0]].field_768
                        u = (0 / totalStaked) + sub_fd50644d
                        u = sha3(ext_call.return_data[0], 10)
                        u = ext_call.return_data[0]
                        u = u + 1
                        v = (s / 10^18) - t + v
                        continue 
                    if (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256) / nFTBalance[ext_call.return_data[0]].field_256 != (0 / totalStaked) + sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    s = (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256)
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = (0 / totalStaked) + sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _11105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11105] = 26
                mem[_11105 + 32] = 'SafeMath: division by zero'
                _11124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11124] = 26
                mem[_11124 + 32] = 'SafeMath: division by zero'
                if not block.number - lastRewardBlock:
                    _11280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11280] = 26
                    mem[_11280 + 32] = 'SafeMath: division by zero'
                    if not totalStaked:
                        _11307 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _11307 + 68] = mem[idx + _11280 + 32]
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            idx = idx + 32
                            continue 
                        mem[_11307 + 68] = mem[_11307 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _11307 + -mem[64] + 100
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        s = 0
                        t = nFTBalance[ext_call.return_data[0]].field_768
                        u = (0 / totalStaked) + sub_fd50644d
                        u = sha3(ext_call.return_data[0], 10)
                        u = ext_call.return_data[0]
                        u = u + 1
                        v = (s / 10^18) - t + v
                        continue 
                    if (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256) / nFTBalance[ext_call.return_data[0]].field_256 != (0 / totalStaked) + sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    s = (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256)
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = (0 / totalStaked) + sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                    _11306 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11306] = 26
                    mem[_11306 + 32] = 'SafeMath: division by zero'
                    if not totalStaked:
                        _11341 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _11341 + 68] = mem[idx + _11306 + 32]
                            mem[64] = mem[64] + 64
                            mem[96] = 26
                            mem[128] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[160] = 30
                            mem[192] = 'SafeMath: subtraction overflow'
                            idx = idx + 32
                            continue 
                        mem[_11341 + 68] = mem[_11341 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _11341 + -mem[64] + 100
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        s = 0
                        t = nFTBalance[ext_call.return_data[0]].field_768
                        u = (0 / totalStaked) + sub_fd50644d
                        u = sha3(ext_call.return_data[0], 10)
                        u = ext_call.return_data[0]
                        u = u + 1
                        v = (s / 10^18) - t + v
                        continue 
                    if (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256) / nFTBalance[ext_call.return_data[0]].field_256 != (0 / totalStaked) + sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    s = (0 / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256)
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = (0 / totalStaked) + sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _11340 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11340] = 26
                mem[_11340 + 32] = 'SafeMath: division by zero'
                if not totalStaked:
                    _11376 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _11376 + 68] = mem[idx + _11340 + 32]
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        idx = idx + 32
                        continue 
                    mem[_11376 + 68] = mem[_11376 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _11376 + -mem[64] + 100
                if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    s = 0
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256) / nFTBalance[ext_call.return_data[0]].field_256 != ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                mem[64] = mem[64] + 64
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                mem[64] = mem[64] + 64
                mem[160] = 30
                mem[192] = 'SafeMath: subtraction overflow'
                s = ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked * nFTBalance[ext_call.return_data[0]].field_256) + (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256)
                t = nFTBalance[ext_call.return_data[0]].field_768
                u = ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d
                u = sha3(ext_call.return_data[0], 10)
                u = ext_call.return_data[0]
                u = u + 1
                v = (s / 10^18) - t + v
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[160]
            _10845 = mem[160]
            if not mem[160]:
                if not mem[160] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[160] + 32]
                mem[floor32(mem[160]) + mem[64] + 68] = mem[floor32(mem[160]) + mem[64] + -(mem[160] % 32) + 100 len mem[160] % 32]
            else:
                mem[mem[64] + 68] = mem[192]
                mem[mem[64] + 100 len floor32(_10845 - 1)] = mem[224 len floor32(_10845 - 1)]
                if not _10845 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _10845 + 32]
                mem[floor32(_10845) + mem[64] + 68] = mem[floor32(_10845) + mem[64] + -(_10845 % 32) + 100 len _10845 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_10845) + 64]
    else:
        if not var106001:
            if not var61002:
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                mem[64] = 224
                mem[160] = 30
                mem[192] = 'SafeMath: subtraction overflow'
                s = var61002
                s = var61006
                s = var61009
                s = var61011
                s = var61014
                s = var61015
                while var69004 <= var69001 / 10^18:
                    if (var69001 / 10^18) - var69004 + var69013 < var69013:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var69012 + 1 >= ext_call.return_data[0]:
                        return ((var69001 / 10^18) - var69004 + var69013)
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = var69012 + 1
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(arg1), var69012 + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = ext_call.return_data[0]
                    mem[32] = 10
                    if block.number > lastRewardBlock:
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        var105003 = sha3(ext_call.return_data[0], 10)
                        var105005 = ext_call.return_data[0]
                        var105008 = var69012 + 1
                        var105009 = (var69001 / 10^18) - var69004 + var69013
                        continue 
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[160] = 30
                        mem[192] = 'SafeMath: subtraction overflow'
                        s = nFTBalance[ext_call.return_data[0]].field_256
                        s = nFTBalance[ext_call.return_data[0]].field_768
                        s = sha3(ext_call.return_data[0], 10)
                        s = ext_call.return_data[0]
                        s = var69012 + 1
                        s = (var69001 / 10^18) - var69004 + var69013
                        continue 
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    var69001 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                    var69004 = nFTBalance[ext_call.return_data[0]].field_768
                    var69007 = sha3(ext_call.return_data[0], 10)
                    var69009 = ext_call.return_data[0]
                    var69012 = var69012 + 1
                    var69013 = (var69001 / 10^18) - var69004 + var69013
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[160]
                _9918 = mem[160]
                if not mem[160]:
                    if not mem[160] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[160] + 32]
                    mem[floor32(mem[160]) + mem[64] + 68] = mem[floor32(mem[160]) + mem[64] + -(mem[160] % 32) + 100 len mem[160] % 32]
                else:
                    mem[mem[64] + 68] = mem[192]
                    mem[mem[64] + 100 len floor32(_9918 - 1)] = mem[224 len floor32(_9918 - 1)]
                    if not _9918 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _9918 + 32]
                    mem[floor32(_9918) + mem[64] + 68] = mem[floor32(_9918) + mem[64] + -(_9918 % 32) + 100 len _9918 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_9918) + 64]
            require var65003
            if var67001 / var67002 != sub_fd50644d:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[64] = 224
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            s = var69001
            t = var69007
            u = var69010
            u = var69012
            u = var69015
            v = var69016
            while t <= s / 10^18:
                if (s / 10^18) - t + v < v:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if u + 1 >= ext_call.return_data[0]:
                    return ((s / 10^18) - t + v)
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = u + 1
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(arg1), u + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[0]
                mem[32] = 10
                if block.number > lastRewardBlock:
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    var105003 = sha3(ext_call.return_data[0], 10)
                    var105005 = ext_call.return_data[0]
                    var105008 = u + 1
                    var105009 = (s / 10^18) - t + v
                    continue 
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    mem[64] = mem[64] + 64
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[160] = 30
                    mem[192] = 'SafeMath: subtraction overflow'
                    s = 0
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                mem[64] = mem[64] + 64
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                mem[64] = mem[64] + 64
                mem[160] = 30
                mem[192] = 'SafeMath: subtraction overflow'
                s = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                t = nFTBalance[ext_call.return_data[0]].field_768
                u = sha3(ext_call.return_data[0], 10)
                u = ext_call.return_data[0]
                u = u + 1
                v = (s / 10^18) - t + v
                continue 
            _11612 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[160]
            _11614 = mem[160]
            if not mem[160]:
                if not mem[160] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[160] + 32]
                mem[floor32(mem[160]) + mem[64] + 68] = mem[floor32(mem[160]) + mem[64] + -(mem[160] % 32) + 100 len mem[160] % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_11614) + 64]
            mem[mem[64] + 68] = mem[192]
            mem[mem[64] + 100 len floor32(_11614 - 1)] = mem[224 len floor32(_11614 - 1)]
            if not _11614 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _11614 + 32]
            mem[floor32(_11614) + mem[64] + 68] = mem[floor32(_11614) + mem[64] + -(_11614 % 32) + 100 len _11614 % 32]
            revert with memory
              from mem[64]
               len floor32(_11614) + _11612 + -mem[64] + 100
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_96effb75Address)
        staticcall sub_96effb75Address.0x70a08231 with:
                gas gas_remaining wei
               args rewardPoolAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if not block.number - lastRewardBlock:
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                if not totalStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                if not var110002:
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = 480
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    s = var110001
                    s = var110002
                    s = var110006
                    s = var110008
                    s = var110009
                    s = var110011
                    s = var110014
                    s = var110015
                    while var118004 <= var118001 / 10^18:
                        if (var118001 / 10^18) - var118004 + var118013 < var118013:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if var118012 + 1 >= ext_call.return_data[0]:
                            return ((var118001 / 10^18) - var118004 + var118013)
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = var118012 + 1
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x2f745c59 with:
                                gas gas_remaining wei
                               args address(arg1), var118012 + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[0] = ext_call.return_data[0]
                        mem[32] = 10
                        if block.number > lastRewardBlock:
                            mem[64] = mem[64] + 64
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[416] = 30
                            mem[448] = 'SafeMath: subtraction overflow'
                            var105003 = sha3(ext_call.return_data[0], 10)
                            var105005 = ext_call.return_data[0]
                            var105008 = var118012 + 1
                            var105009 = (var118001 / 10^18) - var118004 + var118013
                            continue 
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            mem[64] = mem[64] + 64
                            mem[352] = 26
                            mem[384] = 'SafeMath: division by zero'
                            mem[64] = mem[64] + 64
                            mem[416] = 30
                            mem[448] = 'SafeMath: subtraction overflow'
                            s = sub_fd50644d
                            s = nFTBalance[ext_call.return_data[0]].field_256
                            s = nFTBalance[ext_call.return_data[0]].field_768
                            s = sub_fd50644d
                            s = sha3(ext_call.return_data[0], 10)
                            s = ext_call.return_data[0]
                            s = var118012 + 1
                            s = (var118001 / 10^18) - var118004 + var118013
                            continue 
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        var118001 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                        var118004 = nFTBalance[ext_call.return_data[0]].field_768
                        var118006 = sub_fd50644d
                        var118007 = sha3(ext_call.return_data[0], 10)
                        var118009 = ext_call.return_data[0]
                        var118012 = var118012 + 1
                        var118013 = (var118001 / 10^18) - var118004 + var118013
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[416]
                    _9938 = mem[416]
                    if not mem[416]:
                        if not mem[416] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                        mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
                    else:
                        mem[mem[64] + 68] = mem[448]
                        mem[mem[64] + 100 len floor32(_9938 - 1)] = mem[480 len floor32(_9938 - 1)]
                        if not _9938 % 32:
                            revert with 0, 32, mem[mem[64] + 36 len _9938 + 32]
                        mem[floor32(_9938) + mem[64] + 68] = mem[floor32(_9938) + mem[64] + -(_9938 % 32) + 100 len _9938 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_9938) + 64]
                require var114003
                if var116001 / var116002 != var116003:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                s = var118001
                t = var118007
                u = var118009
                u = var118010
                u = var118012
                u = var118015
                v = var118016
                while t <= s / 10^18:
                    if (s / 10^18) - t + v < v:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if u + 1 >= ext_call.return_data[0]:
                        return ((s / 10^18) - t + v)
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = u + 1
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(arg1), u + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = ext_call.return_data[0]
                    mem[32] = 10
                    if block.number > lastRewardBlock:
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        var105003 = sha3(ext_call.return_data[0], 10)
                        var105005 = ext_call.return_data[0]
                        var105008 = u + 1
                        var105009 = (s / 10^18) - t + v
                        continue 
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        s = 0
                        t = nFTBalance[ext_call.return_data[0]].field_768
                        u = sub_fd50644d
                        u = sha3(ext_call.return_data[0], 10)
                        u = ext_call.return_data[0]
                        u = u + 1
                        v = (s / 10^18) - t + v
                        continue 
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    s = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[416]
                _11629 = mem[416]
                if not mem[416]:
                    if not mem[416] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                    mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
                else:
                    mem[mem[64] + 68] = mem[448]
                    mem[mem[64] + 100 len floor32(_11629 - 1)] = mem[480 len floor32(_11629 - 1)]
                    if not _11629 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _11629 + 32]
                    mem[floor32(_11629) + mem[64] + 68] = mem[floor32(_11629) + mem[64] + -(_11629 % 32) + 100 len _11629 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_11629) + 64]
            if 0 / block.number - lastRewardBlock:
                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            if not totalStaked:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                revert with 0, 'SafeMath: addition overflow'
            if not var112002:
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                s = var112001
                s = var112002
                s = var112006
                s = var112008
                s = var112009
                s = var112011
                s = var112014
                s = var112015
                while var120004 <= var120001 / 10^18:
                    if (var120001 / 10^18) - var120004 + var120013 < var120013:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var120012 + 1 >= ext_call.return_data[0]:
                        return ((var120001 / 10^18) - var120004 + var120013)
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = var120012 + 1
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(arg1), var120012 + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = ext_call.return_data[0]
                    mem[32] = 10
                    if block.number > lastRewardBlock:
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        var105003 = sha3(ext_call.return_data[0], 10)
                        var105005 = ext_call.return_data[0]
                        var105008 = var120012 + 1
                        var105009 = (var120001 / 10^18) - var120004 + var120013
                        continue 
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        s = sub_fd50644d
                        s = nFTBalance[ext_call.return_data[0]].field_256
                        s = nFTBalance[ext_call.return_data[0]].field_768
                        s = sub_fd50644d
                        s = sha3(ext_call.return_data[0], 10)
                        s = ext_call.return_data[0]
                        s = var120012 + 1
                        s = (var120001 / 10^18) - var120004 + var120013
                        continue 
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    var120001 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                    var120004 = nFTBalance[ext_call.return_data[0]].field_768
                    var120006 = sub_fd50644d
                    var120007 = sha3(ext_call.return_data[0], 10)
                    var120009 = ext_call.return_data[0]
                    var120012 = var120012 + 1
                    var120013 = (var120001 / 10^18) - var120004 + var120013
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[416]
                _9934 = mem[416]
                if not mem[416]:
                    if not mem[416] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                    mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
                else:
                    mem[mem[64] + 68] = mem[448]
                    mem[mem[64] + 100 len floor32(_9934 - 1)] = mem[480 len floor32(_9934 - 1)]
                    if not _9934 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _9934 + 32]
                    mem[floor32(_9934) + mem[64] + 68] = mem[floor32(_9934) + mem[64] + -(_9934 % 32) + 100 len _9934 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_9934) + 64]
            require var116003
            if var118001 / var118002 != var118003:
                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            mem[352] = 26
            mem[384] = 'SafeMath: division by zero'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            s = var120001
            t = var120007
            u = var120009
            u = var120010
            u = var120012
            u = var120015
            v = var120016
            while t <= s / 10^18:
                if (s / 10^18) - t + v < v:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if u + 1 >= ext_call.return_data[0]:
                    return ((s / 10^18) - t + v)
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = u + 1
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(arg1), u + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[0]
                mem[32] = 10
                if block.number > lastRewardBlock:
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    var105003 = sha3(ext_call.return_data[0], 10)
                    var105005 = ext_call.return_data[0]
                    var105008 = u + 1
                    var105009 = (s / 10^18) - t + v
                    continue 
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    s = 0
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                mem[64] = mem[64] + 64
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = mem[64] + 64
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                s = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                t = nFTBalance[ext_call.return_data[0]].field_768
                u = sub_fd50644d
                u = sha3(ext_call.return_data[0], 10)
                u = ext_call.return_data[0]
                u = u + 1
                v = (s / 10^18) - t + v
                continue 
            _11624 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[416]
            _11626 = mem[416]
            if not mem[416]:
                if not mem[416] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_11626) + 64]
            mem[mem[64] + 68] = mem[448]
            mem[mem[64] + 100 len floor32(_11626 - 1)] = mem[480 len floor32(_11626 - 1)]
            if not _11626 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _11626 + 32]
            mem[floor32(_11626) + mem[64] + 68] = mem[floor32(_11626) + mem[64] + -(_11626 % 32) + 100 len _11626 % 32]
            revert with memory
              from mem[64]
               len floor32(_11626) + _11624 + -mem[64] + 100
        if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if not block.number - lastRewardBlock:
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            if not totalStaked:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                revert with 0, 'SafeMath: addition overflow'
            if not var112002:
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                s = var112001
                s = var112002
                s = var112006
                s = var112008
                s = var112009
                s = var112011
                s = var112014
                s = var112015
                while var120004 <= var120001 / 10^18:
                    if (var120001 / 10^18) - var120004 + var120013 < var120013:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var120012 + 1 >= ext_call.return_data[0]:
                        return ((var120001 / 10^18) - var120004 + var120013)
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = var120012 + 1
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(arg1), var120012 + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = ext_call.return_data[0]
                    mem[32] = 10
                    if block.number > lastRewardBlock:
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        var105003 = sha3(ext_call.return_data[0], 10)
                        var105005 = ext_call.return_data[0]
                        var105008 = var120012 + 1
                        var105009 = (var120001 / 10^18) - var120004 + var120013
                        continue 
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        s = sub_fd50644d
                        s = nFTBalance[ext_call.return_data[0]].field_256
                        s = nFTBalance[ext_call.return_data[0]].field_768
                        s = sub_fd50644d
                        s = sha3(ext_call.return_data[0], 10)
                        s = ext_call.return_data[0]
                        s = var120012 + 1
                        s = (var120001 / 10^18) - var120004 + var120013
                        continue 
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    var120001 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                    var120004 = nFTBalance[ext_call.return_data[0]].field_768
                    var120006 = sub_fd50644d
                    var120007 = sha3(ext_call.return_data[0], 10)
                    var120009 = ext_call.return_data[0]
                    var120012 = var120012 + 1
                    var120013 = (var120001 / 10^18) - var120004 + var120013
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[416]
                _9930 = mem[416]
                if not mem[416]:
                    if not mem[416] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                    mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
                else:
                    mem[mem[64] + 68] = mem[448]
                    mem[mem[64] + 100 len floor32(_9930 - 1)] = mem[480 len floor32(_9930 - 1)]
                    if not _9930 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _9930 + 32]
                    mem[floor32(_9930) + mem[64] + 68] = mem[floor32(_9930) + mem[64] + -(_9930 % 32) + 100 len _9930 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_9930) + 64]
            require var116003
            if var118001 / var118002 != var118003:
                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            mem[352] = 26
            mem[384] = 'SafeMath: division by zero'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            s = var120001
            t = var120007
            u = var120009
            u = var120010
            u = var120012
            u = var120015
            v = var120016
            while t <= s / 10^18:
                if (s / 10^18) - t + v < v:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if u + 1 >= ext_call.return_data[0]:
                    return ((s / 10^18) - t + v)
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = u + 1
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(arg1), u + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[0]
                mem[32] = 10
                if block.number > lastRewardBlock:
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    var105003 = sha3(ext_call.return_data[0], 10)
                    var105005 = ext_call.return_data[0]
                    var105008 = u + 1
                    var105009 = (s / 10^18) - t + v
                    continue 
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    s = 0
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                mem[64] = mem[64] + 64
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = mem[64] + 64
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                s = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                t = nFTBalance[ext_call.return_data[0]].field_768
                u = sub_fd50644d
                u = sha3(ext_call.return_data[0], 10)
                u = ext_call.return_data[0]
                u = u + 1
                v = (s / 10^18) - t + v
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[416]
            _11623 = mem[416]
            if not mem[416]:
                if not mem[416] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
            else:
                mem[mem[64] + 68] = mem[448]
                mem[mem[64] + 100 len floor32(_11623 - 1)] = mem[480 len floor32(_11623 - 1)]
                if not _11623 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _11623 + 32]
                mem[floor32(_11623) + mem[64] + 68] = mem[floor32(_11623) + mem[64] + -(_11623 % 32) + 100 len _11623 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_11623) + 64]
        if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            if not totalStaked:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                revert with 0, 'SafeMath: addition overflow'
            if not var114002:
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                s = var114001
                s = var114002
                s = var114006
                s = var114008
                s = var114009
                s = var114011
                s = var114014
                s = var114015
                while var122004 <= var122001 / 10^18:
                    if (var122001 / 10^18) - var122004 + var122013 < var122013:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if var122012 + 1 >= ext_call.return_data[0]:
                        return ((var122001 / 10^18) - var122004 + var122013)
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = var122012 + 1
                    require ext_code.size(stakingNFTAddress)
                    staticcall stakingNFTAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(arg1), var122012 + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = ext_call.return_data[0]
                    mem[32] = 10
                    if block.number > lastRewardBlock:
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        var105003 = sha3(ext_call.return_data[0], 10)
                        var105005 = ext_call.return_data[0]
                        var105008 = var122012 + 1
                        var105009 = (var122001 / 10^18) - var122004 + var122013
                        continue 
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        mem[64] = mem[64] + 64
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = mem[64] + 64
                        mem[416] = 30
                        mem[448] = 'SafeMath: subtraction overflow'
                        s = sub_fd50644d
                        s = nFTBalance[ext_call.return_data[0]].field_256
                        s = nFTBalance[ext_call.return_data[0]].field_768
                        s = sub_fd50644d
                        s = sha3(ext_call.return_data[0], 10)
                        s = ext_call.return_data[0]
                        s = var122012 + 1
                        s = (var122001 / 10^18) - var122004 + var122013
                        continue 
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    var122001 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                    var122004 = nFTBalance[ext_call.return_data[0]].field_768
                    var122006 = sub_fd50644d
                    var122007 = sha3(ext_call.return_data[0], 10)
                    var122009 = ext_call.return_data[0]
                    var122012 = var122012 + 1
                    var122013 = (var122001 / 10^18) - var122004 + var122013
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[416]
                _9926 = mem[416]
                if not mem[416]:
                    if not mem[416] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                    mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
                else:
                    mem[mem[64] + 68] = mem[448]
                    mem[mem[64] + 100 len floor32(_9926 - 1)] = mem[480 len floor32(_9926 - 1)]
                    if not _9926 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _9926 + 32]
                    mem[floor32(_9926) + mem[64] + 68] = mem[floor32(_9926) + mem[64] + -(_9926 % 32) + 100 len _9926 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_9926) + 64]
            require var118003
            if var120001 / var120002 != var120003:
                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            mem[352] = 26
            mem[384] = 'SafeMath: division by zero'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            s = var122001
            t = var122007
            u = var122009
            u = var122010
            u = var122012
            u = var122015
            v = var122016
            while t <= s / 10^18:
                if (s / 10^18) - t + v < v:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if u + 1 >= ext_call.return_data[0]:
                    return ((s / 10^18) - t + v)
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = u + 1
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(arg1), u + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[0]
                mem[32] = 10
                if block.number > lastRewardBlock:
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    var105003 = sha3(ext_call.return_data[0], 10)
                    var105005 = ext_call.return_data[0]
                    var105008 = u + 1
                    var105009 = (s / 10^18) - t + v
                    continue 
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    s = 0
                    t = nFTBalance[ext_call.return_data[0]].field_768
                    u = sub_fd50644d
                    u = sha3(ext_call.return_data[0], 10)
                    u = ext_call.return_data[0]
                    u = u + 1
                    v = (s / 10^18) - t + v
                    continue 
                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                mem[64] = mem[64] + 64
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = mem[64] + 64
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                s = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                t = nFTBalance[ext_call.return_data[0]].field_768
                u = sub_fd50644d
                u = sha3(ext_call.return_data[0], 10)
                u = ext_call.return_data[0]
                u = u + 1
                v = (s / 10^18) - t + v
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[416]
            _11620 = mem[416]
            if not mem[416]:
                if not mem[416] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
            else:
                mem[mem[64] + 68] = mem[448]
                mem[mem[64] + 100 len floor32(_11620 - 1)] = mem[480 len floor32(_11620 - 1)]
                if not _11620 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _11620 + 32]
                mem[floor32(_11620) + mem[64] + 68] = mem[floor32(_11620) + mem[64] + -(_11620 % 32) + 100 len _11620 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_11620) + 64]
        if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        if not totalStaked:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
            revert with 0, 'SafeMath: addition overflow'
        if not var116002:
            mem[352] = 26
            mem[384] = 'SafeMath: division by zero'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            s = var116001
            s = var116002
            s = var116006
            s = var116008
            s = var116009
            s = var116011
            s = var116014
            s = var116015
            while var124004 <= var124001 / 10^18:
                if (var124001 / 10^18) - var124004 + var124013 < var124013:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var124012 + 1 >= ext_call.return_data[0]:
                    return ((var124001 / 10^18) - var124004 + var124013)
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = var124012 + 1
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x2f745c59 with:
                        gas gas_remaining wei
                       args address(arg1), var124012 + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[0] = ext_call.return_data[0]
                mem[32] = 10
                if block.number > lastRewardBlock:
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    var105003 = sha3(ext_call.return_data[0], 10)
                    var105005 = ext_call.return_data[0]
                    var105008 = var124012 + 1
                    var105009 = (var124001 / 10^18) - var124004 + var124013
                    continue 
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    mem[64] = mem[64] + 64
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = mem[64] + 64
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    s = sub_fd50644d
                    s = nFTBalance[ext_call.return_data[0]].field_256
                    s = nFTBalance[ext_call.return_data[0]].field_768
                    s = sub_fd50644d
                    s = sha3(ext_call.return_data[0], 10)
                    s = ext_call.return_data[0]
                    s = var124012 + 1
                    s = (var124001 / 10^18) - var124004 + var124013
                    continue 
                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                mem[64] = mem[64] + 64
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = mem[64] + 64
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                var124001 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
                var124004 = nFTBalance[ext_call.return_data[0]].field_768
                var124006 = sub_fd50644d
                var124007 = sha3(ext_call.return_data[0], 10)
                var124009 = ext_call.return_data[0]
                var124012 = var124012 + 1
                var124013 = (var124001 / 10^18) - var124004 + var124013
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[416]
            _9922 = mem[416]
            if not mem[416]:
                if not mem[416] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
                mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
            else:
                mem[mem[64] + 68] = mem[448]
                mem[mem[64] + 100 len floor32(_9922 - 1)] = mem[480 len floor32(_9922 - 1)]
                if not _9922 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _9922 + 32]
                mem[floor32(_9922) + mem[64] + 68] = mem[floor32(_9922) + mem[64] + -(_9922 % 32) + 100 len _9922 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_9922) + 64]
        require var120003
        if var122001 / var122002 != var122003:
            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        mem[352] = 26
        mem[384] = 'SafeMath: division by zero'
        mem[64] = 480
        mem[416] = 30
        mem[448] = 'SafeMath: subtraction overflow'
        s = var124001
        t = var124007
        u = var124009
        u = var124010
        u = var124012
        u = var124015
        v = var124016
        while t <= s / 10^18:
            if (s / 10^18) - t + v < v:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if u + 1 >= ext_call.return_data[0]:
                return ((s / 10^18) - t + v)
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = u + 1
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg1), u + 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = ext_call.return_data[0]
            mem[32] = 10
            if block.number > lastRewardBlock:
                mem[64] = mem[64] + 64
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = mem[64] + 64
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                var105003 = sha3(ext_call.return_data[0], 10)
                var105005 = ext_call.return_data[0]
                var105008 = u + 1
                var105009 = (s / 10^18) - t + v
                continue 
            if not nFTBalance[ext_call.return_data[0]].field_256:
                mem[64] = mem[64] + 64
                mem[352] = 26
                mem[384] = 'SafeMath: division by zero'
                mem[64] = mem[64] + 64
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                s = 0
                t = nFTBalance[ext_call.return_data[0]].field_768
                u = sub_fd50644d
                u = sha3(ext_call.return_data[0], 10)
                u = ext_call.return_data[0]
                u = u + 1
                v = (s / 10^18) - t + v
                continue 
            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            mem[64] = mem[64] + 64
            mem[352] = 26
            mem[384] = 'SafeMath: division by zero'
            mem[64] = mem[64] + 64
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            s = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256
            t = nFTBalance[ext_call.return_data[0]].field_768
            u = sub_fd50644d
            u = sha3(ext_call.return_data[0], 10)
            u = ext_call.return_data[0]
            u = u + 1
            v = (s / 10^18) - t + v
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[416]
        _11617 = mem[416]
        if not mem[416]:
            if not mem[416] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[416] + 32]
            mem[floor32(mem[416]) + mem[64] + 68] = mem[floor32(mem[416]) + mem[64] + -(mem[416] % 32) + 100 len mem[416] % 32]
        else:
            mem[mem[64] + 68] = mem[448]
            mem[mem[64] + 100 len floor32(_11617 - 1)] = mem[480 len floor32(_11617 - 1)]
            if not _11617 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _11617 + 32]
            mem[floor32(_11617) + mem[64] + 68] = mem[floor32(_11617) + mem[64] + -(_11617 % 32) + 100 len _11617 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_11617) + 64]
}

function sub_d4c55512(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Can not stake 0 DNFY'
    require ext_code.size(sub_96effb75Address)
    staticcall sub_96effb75Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Do not have enough DNFY to stake'
    if block.number <= lastRewardBlock:
        require ext_code.size(stakingNFTAddress)
        staticcall stakingNFTAddress.0x6d4b7deb with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x6d4b7deb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not nFTBalance[ext_call.return_data[0]].field_256:
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                if arg1 + totalStaked < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked += arg1
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                else:
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
            else:
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_96effb75Address)
                    if not -nFTBalance[ext_call.return_data[0]].field_768:
                        call sub_96effb75Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[ext_call.return_data[0]].field_256 += arg1
                        if arg1 + totalStaked < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6d4b7deb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[ext_call.return_data[0]].field_256 += arg1
                        if arg1 + totalStaked < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            Mask(216, 0, block.timestamp),
                                            mem[352 len 4]
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                else:
                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_96effb75Address)
                    if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                        call sub_96effb75Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[ext_call.return_data[0]].field_256 += arg1
                        if arg1 + totalStaked < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        call sub_96effb75Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stakingNFTAddress)
                        staticcall stakingNFTAddress.0x6d4b7deb with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[ext_call.return_data[0]].field_256 += arg1
                        if arg1 + totalStaked < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            Mask(216, 0, block.timestamp),
                                            mem[352 len 4]
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
        else:
            call stakingAddress.0x6a627842 with:
                 gas gas_remaining wei
                args Mask(224, 32, msg.sender) >> 32, mem[196 len 4]
            if bool(ext_call.success) != 1:
                revert with 0, 'Mint call failed'
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x6d4b7deb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            nFTBalance[ext_call.return_data[0]].field_0 = msg.sender
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x6d4b7deb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            nFTBalance[ext_call.return_data[0]].field_512 = 1
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x6d4b7deb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not return_data.size:
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    nFTBalance[ext_call.return_data[0]].field_256 += arg1
                    if arg1 + totalStaked < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[265 len 31]
                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                else:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_96effb75Address)
                        if not -nFTBalance[ext_call.return_data[0]].field_768:
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 31]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x6d4b7deb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                Mask(216, 0, block.timestamp),
                                                mem[420 len 4]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[265 len 31]
                        if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_96effb75Address)
                        if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 31]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x6d4b7deb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                Mask(216, 0, block.timestamp),
                                                mem[420 len 4]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
            else:
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    nFTBalance[ext_call.return_data[0]].field_256 += arg1
                    if arg1 + totalStaked < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 
                                        32,
                                        33,
                                        0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 266 len 31]
                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                else:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_96effb75Address)
                        if not -nFTBalance[ext_call.return_data[0]].field_768:
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x6d4b7deb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                Mask(216, 0, block.timestamp),
                                                mem[ceil32(return_data.size) + 421 len 4]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 
                                        32,
                                        33,
                                        0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 266 len 31]
                        if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_96effb75Address)
                        if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x6d4b7deb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                Mask(216, 0, block.timestamp),
                                                mem[ceil32(return_data.size) + 421 len 4]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
    else:
        if not totalStaked:
            lastRewardBlock = block.number
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x6d4b7deb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x6d4b7deb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    nFTBalance[ext_call.return_data[0]].field_256 += arg1
                    if arg1 + totalStaked < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                else:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_96effb75Address)
                        if not -nFTBalance[ext_call.return_data[0]].field_768:
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x6d4b7deb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                Mask(216, 0, block.timestamp),
                                                mem[352 len 4]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_96effb75Address)
                        if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x6d4b7deb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                Mask(216, 0, block.timestamp),
                                                mem[352 len 4]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
            else:
                call stakingAddress.0x6a627842 with:
                     gas gas_remaining wei
                    args Mask(224, 32, msg.sender) >> 32, mem[196 len 4]
                if bool(ext_call.success) != 1:
                    revert with 0, 'Mint call failed'
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x6d4b7deb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                nFTBalance[ext_call.return_data[0]].field_0 = msg.sender
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x6d4b7deb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                nFTBalance[ext_call.return_data[0]].field_512 = 1
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x6d4b7deb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not return_data.size:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[ext_call.return_data[0]].field_256 += arg1
                        if arg1 + totalStaked < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[265 len 31]
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_96effb75Address)
                            if not -nFTBalance[ext_call.return_data[0]].field_768:
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 31]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                            else:
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x6d4b7deb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    Mask(216, 0, block.timestamp),
                                                    mem[420 len 4]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[265 len 31]
                            if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_96effb75Address)
                            if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 31]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                            else:
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x6d4b7deb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    Mask(216, 0, block.timestamp),
                                                    mem[420 len 4]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                else:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[ext_call.return_data[0]].field_256 += arg1
                        if arg1 + totalStaked < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 266 len 31]
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_96effb75Address)
                            if not -nFTBalance[ext_call.return_data[0]].field_768:
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 394 len 31]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                            else:
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x6d4b7deb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    Mask(216, 0, block.timestamp),
                                                    mem[ceil32(return_data.size) + 421 len 4]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 266 len 31]
                            if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_96effb75Address)
                            if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 394 len 31]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                            else:
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x6d4b7deb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    Mask(216, 0, block.timestamp),
                                                    mem[ceil32(return_data.size) + 421 len 4]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
        else:
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_96effb75Address)
            staticcall sub_96effb75Address.0x70a08231 with:
                    gas gas_remaining wei
                   args rewardPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if block.number - lastRewardBlock:
                    if 0 / block.number - lastRewardBlock:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(sub_96effb75Address)
                call sub_96effb75Address.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardPoolAddress, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalStaked:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fd50644d += 0 / totalStaked
                lastRewardBlock = block.number
                emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
            else:
                if dailyReward * ext_call.return_data[0] / ext_call.return_data[0] != dailyReward:
                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not block.number - lastRewardBlock:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd50644d += 0 / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, 0, block.timestamp);
                else:
                    if (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / block.number - lastRewardBlock != dailyReward * ext_call.return_data[0] / 50000 / 10000:
                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardPoolAddress, this.address, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000):
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += 0 / totalStaked
                    else:
                        if (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) != 10^18:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalStaked:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked) + sub_fd50644d < sub_fd50644d:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_fd50644d += (10^18 * block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (10^18 * lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000) / totalStaked
                    lastRewardBlock = block.number
                    emit PoolUpdated(block.number - lastRewardBlock, (block.number * dailyReward * ext_call.return_data[0] / 50000 / 10000) - (lastRewardBlock * dailyReward * ext_call.return_data[0] / 50000 / 10000), block.timestamp);
            require ext_code.size(stakingNFTAddress)
            staticcall stakingNFTAddress.0x6d4b7deb with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x6d4b7deb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not nFTBalance[ext_call.return_data[0]].field_256:
                    require ext_code.size(sub_96effb75Address)
                    call sub_96effb75Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    nFTBalance[ext_call.return_data[0]].field_256 += arg1
                    if arg1 + totalStaked < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        nFTBalance[ext_call.return_data[0]].field_768 = 0
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                else:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_96effb75Address)
                        if not -nFTBalance[ext_call.return_data[0]].field_768:
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x6d4b7deb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                Mask(216, 0, block.timestamp),
                                                mem[608 len 4]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                            revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_96effb75Address)
                        if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            call sub_96effb75Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingNFTAddress)
                            staticcall stakingNFTAddress.0x6d4b7deb with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                            require ext_code.size(sub_96effb75Address)
                            call sub_96effb75Address.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            nFTBalance[ext_call.return_data[0]].field_256 += arg1
                            if arg1 + totalStaked < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += arg1
                            if not nFTBalance[ext_call.return_data[0]].field_256:
                                nFTBalance[ext_call.return_data[0]].field_768 = 0
                            else:
                                if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                    revert with 0, 
                                                32,
                                                33,
                                                0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                Mask(216, 0, block.timestamp),
                                                mem[608 len 4]
                                nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
            else:
                call stakingAddress with:
                   funct Mask(32, 192, block.timestamp) >> 192
                     gas gas_remaining wei
                    args Mask(224, 32, msg.sender) >> 32, mem[452 len 4]
                if bool(ext_call.success) != 1:
                    revert with 0, 'Mint call failed'
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x6d4b7deb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                nFTBalance[ext_call.return_data[0]].field_0 = msg.sender
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x6d4b7deb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                nFTBalance[ext_call.return_data[0]].field_512 = 1
                require ext_code.size(stakingNFTAddress)
                staticcall stakingNFTAddress.0x6d4b7deb with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not return_data.size:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[ext_call.return_data[0]].field_256 += arg1
                        if arg1 + totalStaked < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[521 len 31]
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_96effb75Address)
                            if not -nFTBalance[ext_call.return_data[0]].field_768:
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[649 len 31]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                            else:
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x6d4b7deb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    Mask(216, 0, block.timestamp),
                                                    mem[676 len 4]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[521 len 31]
                            if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_96effb75Address)
                            if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 32, 33, 0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[649 len 31]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                            else:
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x6d4b7deb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    Mask(216, 0, block.timestamp),
                                                    mem[676 len 4]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                else:
                    if not nFTBalance[ext_call.return_data[0]].field_256:
                        require ext_code.size(sub_96effb75Address)
                        call sub_96effb75Address.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        nFTBalance[ext_call.return_data[0]].field_256 += arg1
                        if arg1 + totalStaked < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += arg1
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            nFTBalance[ext_call.return_data[0]].field_768 = 0
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                    else:
                        if not nFTBalance[ext_call.return_data[0]].field_256:
                            if nFTBalance[ext_call.return_data[0]].field_768 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_96effb75Address)
                            if not -nFTBalance[ext_call.return_data[0]].field_768:
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 650 len 31]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                            else:
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x6d4b7deb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xfe56253d: msg.sender, -nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    Mask(216, 0, block.timestamp),
                                                    mem[ceil32(return_data.size) + 677 len 4]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                        else:
                            if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                revert with 0, 
                                            32,
                                            33,
                                            0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            if nFTBalance[ext_call.return_data[0]].field_768 > sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_96effb75Address)
                            if not (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768:
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 650 len 31]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
                            else:
                                call sub_96effb75Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingNFTAddress)
                                staticcall stakingNFTAddress.0x6d4b7deb with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xfe56253d: msg.sender, (sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18) - nFTBalance[ext_call.return_data[0]].field_768, ext_call.return_data[0], block.timestamp
                                require ext_code.size(sub_96effb75Address)
                                call sub_96effb75Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 + nFTBalance[ext_call.return_data[0]].field_256 < nFTBalance[ext_call.return_data[0]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                nFTBalance[ext_call.return_data[0]].field_256 += arg1
                                if arg1 + totalStaked < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += arg1
                                if not nFTBalance[ext_call.return_data[0]].field_256:
                                    nFTBalance[ext_call.return_data[0]].field_768 = 0
                                else:
                                    if sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / nFTBalance[ext_call.return_data[0]].field_256 != sub_fd50644d:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0xbf536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    Mask(216, 0, block.timestamp),
                                                    mem[ceil32(return_data.size) + 677 len 4]
                                    nFTBalance[ext_call.return_data[0]].field_768 = sub_fd50644d * nFTBalance[ext_call.return_data[0]].field_256 / 10^18
    require ext_code.size(stakingNFTAddress)
    staticcall stakingNFTAddress.0x6d4b7deb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit StakeCompleted(msg.sender, arg1, ext_call.return_data[0], nFTBalance[ext_call.return_data[0]].field_256, block.timestamp);
}



}
