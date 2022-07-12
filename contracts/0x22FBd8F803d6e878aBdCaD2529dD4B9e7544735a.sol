contract main {




// =====================  Runtime code  =====================


#
#  - sub_357f76b1(?)
#  - withdraw()
#  - harvestToken()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint256 stor52;
mapping of uint8 stor54;
uint256 stor56;
address stakeTokenAddress;
uint256 totalStaked;
mapping of uint256 userStaked;
address sub_703b658fAddress;
address yieldTokenAddress;
uint256 halving;
uint256 startTime;
uint256 stakingTime;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 totalRewards;
uint256 eraPeriod;
uint256 totalReward;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function totalRewards() payable {
    return totalRewards
}

function stakingTime() payable {
    return stakingTime
}

function stakeToken() payable {
    return stakeTokenAddress
}

function sub_703b658f(?) payable {
    return sub_703b658fAddress
}

function totalReward() payable {
    return totalReward
}

function yieldToken() payable {
    return yieldTokenAddress
}

function startTime() payable {
    return startTime
}

function rewardRate() payable {
    return rewardRate
}

function totalStaked() payable {
    return totalStaked
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function userStaked(address arg1) payable {
    require calldata.size - 4 >= 32
    return userStaked[address(arg1)]
}

function eraPeriod() payable {
    return eraPeriod
}

function halving() payable {
    return halving
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < eraPeriod:
        return block.timestamp
    return eraPeriod
}

function sub_8c8f7492(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_703b658fAddress = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_cbbc4065(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_703b658fAddress == arg1:
        revert with 0, 'address allready set'
    sub_703b658fAddress = arg1
}

function recoverETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6a7bf8ee(?) payable {
    require calldata.size - 4 >= 64
    if bool(stor54[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7363616e2774206d696e742c206164647265737320696e6372656d656e74206973206e6f74207365,
                    mem[204 len 24]
    if not arg2:
        revert with 0, 'ERC20: mint to the zero address'
    stor56 += arg1
    stor52[address(arg2)] += arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x674f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        stakeTokenAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                        mem[210 len 18]
        if uint8(stor0.field_8):
            stakeTokenAddress = arg1
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            stakeTokenAddress = arg1
            Mask(248, 0, stor0.field_8) = 0
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
}

function sub_7aec797e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, msg.sender, ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, msg.sender, ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), address(arg2) << 64:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}

function rewardPerToken() payable {
    if not totalStaked:
        return rewardPerTokenStored
    if block.timestamp < eraPeriod:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalStaked))
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalStaked))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked))
    if lastUpdateTime > eraPeriod:
        revert with 0, 'SafeMath: subtraction overflow'
    if not eraPeriod - lastUpdateTime:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalStaked))
    require eraPeriod - lastUpdateTime
    if (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) / eraPeriod - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate):
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalStaked))
    require (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked))
}

function earning(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalStaked:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userStaked[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require userStaked[address(arg1)]
        if (rewardPerTokenStored * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / userStaked[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ((rewardPerTokenStored * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < eraPeriod:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalStaked):
                revert with 0, 'SafeMath: subtraction overflow'
            if not userStaked[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require userStaked[address(arg1)]
            if (rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / userStaked[address(arg1)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalStaked):
                revert with 0, 'SafeMath: subtraction overflow'
            if not userStaked[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require userStaked[address(arg1)]
            if (rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / userStaked[address(arg1)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userStaked[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require userStaked[address(arg1)]
        if (rewardPerTokenStored * userStaked[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / userStaked[address(arg1)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * userStaked[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStaked[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * userStaked[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if lastUpdateTime > eraPeriod:
        revert with 0, 'SafeMath: subtraction overflow'
    if not eraPeriod - lastUpdateTime:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalStaked):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userStaked[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require userStaked[address(arg1)]
        if (rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / userStaked[address(arg1)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require eraPeriod - lastUpdateTime
    if (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) / eraPeriod - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate):
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalStaked):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userStaked[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require userStaked[address(arg1)]
        if (rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / userStaked[address(arg1)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * userStaked[address(arg1)]) + (0 / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked):
        revert with 0, 'SafeMath: subtraction overflow'
    if not userStaked[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    require userStaked[address(arg1)]
    if (rewardPerTokenStored * userStaked[address(arg1)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / userStaked[address(arg1)] != rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ((rewardPerTokenStored * userStaked[address(arg1)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStaked[address(arg1)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * userStaked[address(arg1)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStaked[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalStaked:
        if block.timestamp < eraPeriod:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = eraPeriod
        if not msg.sender:
            if block.timestamp < eraPeriod:
                if block.timestamp <= startTime:
                    revert with 0, 'ERROR: Not start'
                if arg1 <= 0:
                    revert with 0, 'ERROR: Cannot stake 0 Tether'
                if totalStaked + arg1 < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked += arg1
                if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userStaked[address(msg.sender)] += arg1
                if ext_code.size(stakeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call stakeTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if not totalReward:
                    totalReward = 0
                else:
                    require totalReward
                    if 80 * totalReward / totalReward != 80:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    totalReward = 80 * totalReward / 100
                if halving <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require halving
                rewardRate = totalReward / halving
                if block.timestamp + halving < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                eraPeriod = block.timestamp + halving
                emit RewardAdded(totalReward);
                if block.timestamp <= startTime:
                    revert with 0, 'ERROR: Not start'
                if arg1 <= 0:
                    revert with 0, 'ERROR: Cannot stake 0 Tether'
                if totalStaked + arg1 < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked += arg1
                if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userStaked[address(msg.sender)] += arg1
                if ext_code.size(stakeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[544 len 4] = 0
                mem[516 len 0] = 0
                call stakeTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
        else:
            if not totalStaked:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userStaked[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require userStaked[address(msg.sender)]
                    if (rewardPerTokenStored * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ((rewardPerTokenStored * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp < eraPeriod:
                    if block.timestamp <= startTime:
                        revert with 0, 'ERROR: Not start'
                    if arg1 <= 0:
                        revert with 0, 'ERROR: Cannot stake 0 Tether'
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userStaked[address(msg.sender)] += arg1
                    if ext_code.size(stakeTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[544 len 4] = 0
                    mem[516 len 0] = 0
                    call stakeTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                else:
                    if not totalReward:
                        totalReward = 0
                    else:
                        require totalReward
                        if 80 * totalReward / totalReward != 80:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        totalReward = 80 * totalReward / 100
                    if halving <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halving
                    rewardRate = totalReward / halving
                    if block.timestamp + halving < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    eraPeriod = block.timestamp + halving
                    emit RewardAdded(totalReward);
                    if block.timestamp <= startTime:
                        revert with 0, 'ERROR: Not start'
                    if arg1 <= 0:
                        revert with 0, 'ERROR: Cannot stake 0 Tether'
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userStaked[address(msg.sender)] += arg1
                    if ext_code.size(stakeTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[672 len 4] = 0
                    mem[644 len 0] = 0
                    call stakeTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
            else:
                if block.timestamp < eraPeriod:
                    if lastUpdateTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - lastUpdateTime:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStaked):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userStaked[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userStaked[address(msg.sender)]
                            if (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStaked):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStaked[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStaked[address(msg.sender)]
                                if (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStaked[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStaked[address(msg.sender)]
                                if (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > eraPeriod:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not eraPeriod - lastUpdateTime:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStaked):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userStaked[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userStaked[address(msg.sender)]
                            if (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                    else:
                        require eraPeriod - lastUpdateTime
                        if (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) / eraPeriod - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStaked):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStaked[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStaked[address(msg.sender)]
                                if (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                        else:
                            require (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStaked[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStaked[address(msg.sender)]
                                if (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp < eraPeriod:
                    if block.timestamp <= startTime:
                        revert with 0, 'ERROR: Not start'
                    if arg1 <= 0:
                        revert with 0, 'ERROR: Cannot stake 0 Tether'
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userStaked[address(msg.sender)] += arg1
                    if ext_code.size(stakeTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[672 len 4] = 0
                    mem[644 len 0] = 0
                    call stakeTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                else:
                    if not totalReward:
                        totalReward = 0
                    else:
                        require totalReward
                        if 80 * totalReward / totalReward != 80:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        totalReward = 80 * totalReward / 100
                    if halving <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halving
                    rewardRate = totalReward / halving
                    if block.timestamp + halving < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    eraPeriod = block.timestamp + halving
                    emit RewardAdded(totalReward);
                    if block.timestamp <= startTime:
                        revert with 0, 'ERROR: Not start'
                    if arg1 <= 0:
                        revert with 0, 'ERROR: Cannot stake 0 Tether'
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userStaked[address(msg.sender)] += arg1
                    if ext_code.size(stakeTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[800 len 4] = 0
                    mem[772 len 0] = 0
                    call stakeTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
    else:
        if block.timestamp < eraPeriod:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalStaked
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalStaked
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked
        else:
            if lastUpdateTime > eraPeriod:
                revert with 0, 'SafeMath: subtraction overflow'
            if not eraPeriod - lastUpdateTime:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalStaked
            else:
                require eraPeriod - lastUpdateTime
                if (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) / eraPeriod - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalStaked
                else:
                    require (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked
        if block.timestamp < eraPeriod:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = eraPeriod
        if not msg.sender:
            if block.timestamp < eraPeriod:
                if block.timestamp <= startTime:
                    revert with 0, 'ERROR: Not start'
                if arg1 <= 0:
                    revert with 0, 'ERROR: Cannot stake 0 Tether'
                if totalStaked + arg1 < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked += arg1
                if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userStaked[address(msg.sender)] += arg1
                if ext_code.size(stakeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[544 len 4] = 0
                mem[516 len 0] = 0
                call stakeTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
            else:
                if not totalReward:
                    totalReward = 0
                else:
                    require totalReward
                    if 80 * totalReward / totalReward != 80:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    totalReward = 80 * totalReward / 100
                if halving <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require halving
                rewardRate = totalReward / halving
                if block.timestamp + halving < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                eraPeriod = block.timestamp + halving
                emit RewardAdded(totalReward);
                if block.timestamp <= startTime:
                    revert with 0, 'ERROR: Not start'
                if arg1 <= 0:
                    revert with 0, 'ERROR: Cannot stake 0 Tether'
                if totalStaked + arg1 < totalStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaked += arg1
                if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userStaked[address(msg.sender)] += arg1
                if ext_code.size(stakeTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[672 len 4] = 0
                mem[644 len 0] = 0
                call stakeTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 659 len 22]
        else:
            if not totalStaked:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userStaked[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require userStaked[address(msg.sender)]
                    if (rewardPerTokenStored * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if ((rewardPerTokenStored * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp < eraPeriod:
                    if block.timestamp <= startTime:
                        revert with 0, 'ERROR: Not start'
                    if arg1 <= 0:
                        revert with 0, 'ERROR: Cannot stake 0 Tether'
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userStaked[address(msg.sender)] += arg1
                    if ext_code.size(stakeTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[672 len 4] = 0
                    mem[644 len 0] = 0
                    call stakeTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                else:
                    if not totalReward:
                        totalReward = 0
                    else:
                        require totalReward
                        if 80 * totalReward / totalReward != 80:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        totalReward = 80 * totalReward / 100
                    if halving <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halving
                    rewardRate = totalReward / halving
                    if block.timestamp + halving < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    eraPeriod = block.timestamp + halving
                    emit RewardAdded(totalReward);
                    if block.timestamp <= startTime:
                        revert with 0, 'ERROR: Not start'
                    if arg1 <= 0:
                        revert with 0, 'ERROR: Cannot stake 0 Tether'
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userStaked[address(msg.sender)] += arg1
                    if ext_code.size(stakeTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[800 len 4] = 0
                    mem[772 len 0] = 0
                    call stakeTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
            else:
                if block.timestamp < eraPeriod:
                    if lastUpdateTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - lastUpdateTime:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStaked):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userStaked[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userStaked[address(msg.sender)]
                            if (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStaked):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStaked[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStaked[address(msg.sender)]
                                if (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStaked[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStaked[address(msg.sender)]
                                if (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > eraPeriod:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not eraPeriod - lastUpdateTime:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStaked):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userStaked[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userStaked[address(msg.sender)]
                            if (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                    else:
                        require eraPeriod - lastUpdateTime
                        if (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) / eraPeriod - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if rewardPerTokenStored + (0 / totalStaked) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStaked):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStaked[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStaked[address(msg.sender)]
                                if (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + (0 / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + (0 / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                        else:
                            require (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (eraPeriod * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStaked[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStaked[address(msg.sender)]
                                if (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / userStaked[address(msg.sender)] != rewardPerTokenStored + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ((rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStaked[address(msg.sender)]) + ((10^18 * eraPeriod * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStaked * userStaked[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStaked[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp < eraPeriod:
                    if block.timestamp <= startTime:
                        revert with 0, 'ERROR: Not start'
                    if arg1 <= 0:
                        revert with 0, 'ERROR: Cannot stake 0 Tether'
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userStaked[address(msg.sender)] += arg1
                    if ext_code.size(stakeTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[800 len 4] = 0
                    mem[772 len 0] = 0
                    call stakeTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
                else:
                    if not totalReward:
                        totalReward = 0
                    else:
                        require totalReward
                        if 80 * totalReward / totalReward != 80:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        totalReward = 80 * totalReward / 100
                    if halving <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require halving
                    rewardRate = totalReward / halving
                    if block.timestamp + halving < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    eraPeriod = block.timestamp + halving
                    emit RewardAdded(totalReward);
                    if block.timestamp <= startTime:
                        revert with 0, 'ERROR: Not start'
                    if arg1 <= 0:
                        revert with 0, 'ERROR: Cannot stake 0 Tether'
                    if totalStaked + arg1 < totalStaked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalStaked += arg1
                    if userStaked[address(msg.sender)] + arg1 < userStaked[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    userStaked[address(msg.sender)] += arg1
                    if ext_code.size(stakeTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[804 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[928 len 4] = 0
                    mem[900 len 0] = 0
                    call stakeTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[900 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[836]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 915 len 22]
    emit Staked(arg1, msg.sender);
}



}
