contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
address rewardTokenAddress;
uint256 rewardPerSecond;
uint256 BONUS_MULTIPLIER;
address fundAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
uint256 totalLockedUpRewards;
mapping of uint8 stor11;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startTime() payable {
    return startTime
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function fund() payable {
    return fundAddress
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
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

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < startTime:
        return 0
    if arg1 <= startTime:
        if arg2 - startTime and BONUS_MULTIPLIER > -1 / arg2 - startTime:
            revert with 0, 17
        return ((arg2 * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER))
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 and BONUS_MULTIPLIER > -1 / arg2 - arg1:
        revert with 0, 17
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_512 <= startTime:
                if block.timestamp < startTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp - startTime and BONUS_MULTIPLIER > -1 / block.timestamp - startTime:
                        revert with 0, 17
                    if (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER):
                        revert with 0, 17
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if block.timestamp < startTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                        revert with 0, 17
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp > poolInfo[idx].field_512:
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
                if poolInfo[idx].field_512 <= startTime:
                    if block.timestamp < startTime:
                        if False and rewardPerSecond > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_9]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / mem[_9]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / mem[_9]
                    else:
                        if block.timestamp - startTime and BONUS_MULTIPLIER > -1 / block.timestamp - startTime:
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_9]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                else:
                    if block.timestamp < startTime:
                        if False and rewardPerSecond > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_9]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / mem[_9]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / mem[_9]
                    else:
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_9]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_15]:
                if poolInfo[idx].field_512 <= startTime:
                    if block.timestamp < startTime:
                        if False and rewardPerSecond > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_15]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / mem[_15]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / mem[_15]
                    else:
                        if block.timestamp - startTime and BONUS_MULTIPLIER > -1 / block.timestamp - startTime:
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_15]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_15]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_15]
                else:
                    if block.timestamp < startTime:
                        if False and rewardPerSecond > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_15]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / mem[_15]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / mem[_15]
                    else:
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_15]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_15]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_15]
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0x1d75b4af: rewardPerSecond, arg1, msg.sender
    rewardPerSecond = arg1
}

function set(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 336 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _20 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_20]:
                    if poolInfo[idx].field_512 <= startTime:
                        if block.timestamp < startTime:
                            if False and rewardPerSecond > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not mem[_20]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / mem[_20]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / mem[_20]
                        else:
                            if block.timestamp - startTime and BONUS_MULTIPLIER > -1 / block.timestamp - startTime:
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER):
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not mem[_20]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_20]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_20]
                    else:
                        if block.timestamp < startTime:
                            if False and rewardPerSecond > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not mem[_20]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / mem[_20]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / mem[_20]
                        else:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.timestamp - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not mem[_20]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_20]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_20]
                poolInfo[idx].field_512 = block.timestamp
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
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint256 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 11
    if stor11[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 336 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _44 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_44]:
                    if poolInfo[idx].field_512 <= startTime:
                        if block.timestamp < startTime:
                            if False and rewardPerSecond > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not mem[_44]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / mem[_44]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / mem[_44]
                        else:
                            if block.timestamp - startTime and BONUS_MULTIPLIER > -1 / block.timestamp - startTime:
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER):
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not mem[_44]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_44]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_44]
                    else:
                        if block.timestamp < startTime:
                            if False and rewardPerSecond > 0:
                                revert with 0, 17
                            if False and poolInfo[idx].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not mem[_44]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / mem[_44]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / mem[_44]
                        else:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.timestamp - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not mem[_44]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_44]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_44]
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    stor11[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.timestamp > startTime:
        storF652[stor6.length] = block.timestamp
    else:
        storF652[stor6.length] = startTime
    storF652[stor6.length] = 0
    storF652[stor6.length] = arg3
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
    if block.timestamp <= poolInfo[arg1].field_512:
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
    if block.timestamp < startTime:
        if False and rewardPerSecond > 0:
            revert with 0, 17
        if False and poolInfo[arg1].field_256 > 0:
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 <= startTime:
        if block.timestamp - startTime and BONUS_MULTIPLIER > -1 / block.timestamp - startTime:
            revert with 0, 17
        if (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (startTime * BONUS_MULTIPLIER):
            revert with 0, 17
        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (startTime * BONUS_MULTIPLIER * rewardPerSecond):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (startTime * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
        revert with 0, 17
    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}



}
