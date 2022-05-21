contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address rewardTokenAddress;
uint256 rewardPerBlock;
uint256 BONUS_MULTIPLIER;
address fundAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function fund() payable {
    return fundAddress
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setfund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid zero address'
    fundAddress = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 and BONUS_MULTIPLIER > -1 / arg2 - arg1:
        revert with 0, 17
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function fundBalance() payable {
    require ext_code.size(fundAddress)
    staticcall fundAddress.balance(address arg1) with:
            gas gas_remaining wei
           args rewardTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.number - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and rewardPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                revert with 0, 17
            if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_9]:
                if block.number < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_9]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]):
                    revert with 0, 17
                poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setRewardPerBlock(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_11]:
                if block.number < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_11]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_11]):
                    revert with 0, 17
                poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_11]
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardPerBlock = arg1
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _31 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_31]:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not mem[_31]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_31]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_31]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    if block.number > startBlock:
        stor36B6[stor5.length] = block.number
    else:
        stor36B6[stor5.length] = startBlock
    stor36B6[stor5.length] = 0
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_16]:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not mem[_16]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.number - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and rewardPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
        revert with 0, 17
    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}



}
