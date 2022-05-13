contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#  - pendingReward(address arg1)
#
address owner;
address mechsAddress;
address rewardTokenAddress;
uint256 rewardPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 bonusEndBlock;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function mechs() payable {
    return mechsAddress
}

function rewardToken() payable {
    return rewardTokenAddress
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

function updateEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if bonusEndBlock < arg1:
        revert with 'NH{q', 17
    return (bonusEndBlock - arg1)
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'not enough token'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not 0 / totalAllocPoint:
                            revert with 'NH{q', 18
                        if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number - poolInfo[arg1].field_512 and rewardPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if not block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 18
                    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not 0 / totalAllocPoint:
                                revert with 'NH{q', 18
                            if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            revert with 'NH{q', 17
                        if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            revert with 'NH{q', 18
                        if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 1000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                revert with 'NH{q', 18
                            if 1000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 1000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(1000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (1000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not 0 / totalAllocPoint:
                            revert with 'NH{q', 18
                        if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not 0 / totalAllocPoint:
                                revert with 'NH{q', 18
                            if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[arg1].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if bonusEndBlock - poolInfo[arg1].field_512 and rewardPerBlock > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if not bonusEndBlock - poolInfo[arg1].field_512:
                            revert with 'NH{q', 18
                        if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[arg1].field_512 != rewardPerBlock:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not 0 / totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                                revert with 'NH{q', 17
                            if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                                revert with 'NH{q', 18
                            if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 1000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 1000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 1000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(1000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (1000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_197]
        require mem[_197] == mem[_197]
        if not mem[_197]:
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if block.number <= bonusEndBlock:
            _199 = mem[64]
            mem[64] = mem[64] + 64
            mem[_199] = 30
            mem[_199 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _201 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_201 + idx + 68] = mem[_199 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_201 + 98] = 0
                revert with memory
                  from mem[64]
                   len _201 + -mem[64] + 100
            if block.number < poolInfo[idx].field_512:
                revert with 'NH{q', 17
            if not block.number - poolInfo[idx].field_512:
                _215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_215] = 26
                mem[_215 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _217 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_217 + idx + 68] = mem[_215 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_217 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _217 + -mem[64] + 100
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if not 0 / totalAllocPoint:
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = 26
                    mem[_234 + 32] = 'SafeMath: division by zero'
                    if _198 > 0:
                        if not _198:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(0 / _198) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_768 + (0 / _198) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _198
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_242 + idx + 68] = mem[_234 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_242 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _242 + -mem[64] + 100
                if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                    revert with 'NH{q', 17
                if not 0 / totalAllocPoint:
                    revert with 'NH{q', 18
                if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _269 = mem[64]
                mem[64] = mem[64] + 64
                mem[_269] = 26
                mem[_269 + 32] = 'SafeMath: division by zero'
                if _198 > 0:
                    if not _198:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / _198) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / _198) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / _198
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _279 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_279 + idx + 68] = mem[_269 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_279 + 94] = 0
                revert with memory
                  from mem[64]
                   len _279 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                revert with 'NH{q', 17
            if not block.number - poolInfo[idx].field_512:
                revert with 'NH{q', 18
            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _238 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_238 + idx + 68] = mem[_230 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_238 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _238 + -mem[64] + 100
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if not 0 / totalAllocPoint:
                    _268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_268] = 26
                    mem[_268 + 32] = 'SafeMath: division by zero'
                    if _198 > 0:
                        if not _198:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(0 / _198) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[idx].field_768 + (0 / _198) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _198
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _277 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_277 + idx + 68] = mem[_268 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_277 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _277 + -mem[64] + 100
                if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                    revert with 'NH{q', 17
                if not 0 / totalAllocPoint:
                    revert with 'NH{q', 18
                if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _313 = mem[64]
                mem[64] = mem[64] + 64
                mem[_313] = 26
                mem[_313 + 32] = 'SafeMath: division by zero'
                if _198 > 0:
                    if not _198:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / _198) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / _198) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / _198
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_321 + idx + 68] = mem[_313 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_321 + 94] = 0
                revert with memory
                  from mem[64]
                   len _321 + -mem[64] + 100
            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                revert with 'NH{q', 17
            if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                revert with 'NH{q', 18
            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_265] = 26
            mem[_265 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _272 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_272 + idx + 68] = mem[_265 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_272 + 94] = 0
                revert with memory
                  from mem[64]
                   len _272 + -mem[64] + 100
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _312 = mem[64]
                mem[64] = mem[64] + 64
                mem[_312] = 26
                mem[_312 + 32] = 'SafeMath: division by zero'
                if _198 > 0:
                    if not _198:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(0 / _198) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (0 / _198) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _198
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _319 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_319 + idx + 68] = mem[_312 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_319 + 94] = 0
                revert with memory
                  from mem[64]
                   len _319 + -mem[64] + 100
            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000 * 10^18 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 'NH{q', 17
            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 'NH{q', 18
            if 1000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 1000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _353 = mem[64]
            mem[64] = mem[64] + 64
            mem[_353] = 26
            mem[_353 + 32] = 'SafeMath: division by zero'
            if _198 > 0:
                if not _198:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(1000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _198) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (1000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _198) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _198
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _355 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_355 + idx + 68] = mem[_353 + idx + 32]
                idx = idx + 32
                continue 
            mem[_355 + 94] = 0
            revert with memory
              from mem[64]
               len _355 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _205 = mem[64]
            mem[64] = mem[64] + 64
            mem[_205] = 26
            mem[_205 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _208 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_208 + idx + 68] = mem[_205 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_208 + 94] = 0
                revert with memory
                  from mem[64]
                   len _208 + -mem[64] + 100
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not 0 / totalAllocPoint:
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 26
                mem[_219 + 32] = 'SafeMath: division by zero'
                if _198 > 0:
                    if not _198:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(0 / _198) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (0 / _198) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _198
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _223 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_223 + idx + 68] = mem[_219 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_223 + 94] = 0
                revert with memory
                  from mem[64]
                   len _223 + -mem[64] + 100
            if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not 0 / totalAllocPoint:
                revert with 'NH{q', 18
            if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 26
            mem[_246 + 32] = 'SafeMath: division by zero'
            if _198 > 0:
                if not _198:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / _198) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / _198) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / _198
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _251 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_251 + idx + 68] = mem[_246 + idx + 32]
                idx = idx + 32
                continue 
            mem[_251 + 94] = 0
            revert with memory
              from mem[64]
               len _251 + -mem[64] + 100
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _202 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_202 + idx + 68] = mem[_200 + idx + 32]
                idx = idx + 32
                continue 
            mem[_202 + 98] = 0
            revert with memory
              from mem[64]
               len _202 + -mem[64] + 100
        if bonusEndBlock < poolInfo[idx].field_512:
            revert with 'NH{q', 17
        if not bonusEndBlock - poolInfo[idx].field_512:
            _216 = mem[64]
            mem[64] = mem[64] + 64
            mem[_216] = 26
            mem[_216 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _218 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_218 + idx + 68] = mem[_216 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_218 + 94] = 0
                revert with memory
                  from mem[64]
                   len _218 + -mem[64] + 100
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not 0 / totalAllocPoint:
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if _198 > 0:
                    if not _198:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(0 / _198) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (0 / _198) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _198
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_244 + idx + 68] = mem[_236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_244 + 94] = 0
                revert with memory
                  from mem[64]
                   len _244 + -mem[64] + 100
            if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not 0 / totalAllocPoint:
                revert with 'NH{q', 18
            if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if _198 > 0:
                if not _198:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / _198) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / _198) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / _198
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _283 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_283 + idx + 68] = mem[_271 + idx + 32]
                idx = idx + 32
                continue 
            mem[_283 + 94] = 0
            revert with memory
              from mem[64]
               len _283 + -mem[64] + 100
        if bonusEndBlock - poolInfo[idx].field_512 and rewardPerBlock > -1 / bonusEndBlock - poolInfo[idx].field_512:
            revert with 'NH{q', 17
        if not bonusEndBlock - poolInfo[idx].field_512:
            revert with 'NH{q', 18
        if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[idx].field_512 != rewardPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            _231 = mem[64]
            mem[64] = mem[64] + 64
            mem[_231] = 26
            mem[_231 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _240 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_240 + idx + 68] = mem[_231 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_240 + 94] = 0
                revert with memory
                  from mem[64]
                   len _240 + -mem[64] + 100
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not 0 / totalAllocPoint:
                _270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_270] = 26
                mem[_270 + 32] = 'SafeMath: division by zero'
                if _198 > 0:
                    if not _198:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(0 / _198) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[idx].field_768 + (0 / _198) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _198
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_281 + idx + 68] = mem[_270 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_281 + 94] = 0
                revert with memory
                  from mem[64]
                   len _281 + -mem[64] + 100
            if 0 / totalAllocPoint and 1000000 * 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not 0 / totalAllocPoint:
                revert with 'NH{q', 18
            if 1000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _315 = mem[64]
            mem[64] = mem[64] + 64
            mem[_315] = 26
            mem[_315 + 32] = 'SafeMath: division by zero'
            if _198 > 0:
                if not _198:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(1000000 * 10^18 * 0 / totalAllocPoint / _198) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (1000000 * 10^18 * 0 / totalAllocPoint / _198) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000 * 10^18 * 0 / totalAllocPoint / _198
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _326 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_326 + idx + 68] = mem[_315 + idx + 32]
                idx = idx + 32
                continue 
            mem[_326 + 94] = 0
            revert with memory
              from mem[64]
               len _326 + -mem[64] + 100
        if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            revert with 'NH{q', 17
        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            revert with 'NH{q', 18
        if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _266 = mem[64]
        mem[64] = mem[64] + 64
        mem[_266] = 26
        mem[_266 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _274 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_274 + idx + 68] = mem[_266 + idx + 32]
                idx = idx + 32
                continue 
            mem[_274 + 94] = 0
            revert with memory
              from mem[64]
               len _274 + -mem[64] + 100
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _314 = mem[64]
            mem[64] = mem[64] + 64
            mem[_314] = 26
            mem[_314 + 32] = 'SafeMath: division by zero'
            if _198 > 0:
                if not _198:
                    revert with 'NH{q', 18
                if poolInfo[idx].field_768 > -(0 / _198) - 1:
                    revert with 'NH{q', 17
                if poolInfo[idx].field_768 + (0 / _198) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _198
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _324 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_324 + idx + 68] = mem[_314 + idx + 32]
                idx = idx + 32
                continue 
            mem[_324 + 94] = 0
            revert with memory
              from mem[64]
               len _324 + -mem[64] + 100
        if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 1000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 'NH{q', 18
        if 1000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 1000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _354 = mem[64]
        mem[64] = mem[64] + 64
        mem[_354] = 26
        mem[_354 + 32] = 'SafeMath: division by zero'
        if _198 > 0:
            if not _198:
                revert with 'NH{q', 18
            if poolInfo[idx].field_768 > -(1000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _198) - 1:
                revert with 'NH{q', 17
            if poolInfo[idx].field_768 + (1000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _198) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 1000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _198
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _358 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_358 + idx + 68] = mem[_354 + idx + 32]
            idx = idx + 32
            continue 
        mem[_358 + 94] = 0
        revert with memory
          from mem[64]
           len _358 + -mem[64] + 100
}



}
