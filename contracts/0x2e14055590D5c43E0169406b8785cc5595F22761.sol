contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2, address arg3)
#  - harvest(uint256 arg1, address arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const sub_86782813(?) = (720 * 24 * 3600)

const sub_fbbb0df3(?) = (336 * 24 * 3600)

const MAXIMUM_HARVEST_INTERVAL = (24 * 3600)


address owner;
address rewardTokenAddress;
address devaddr;
address fundAddress;
array of struct poolInfo;
mapping of uint8 stor6;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
uint256 endTime;
uint256 rewardPerSecond;
uint256 sub_b562f7af;
uint256 sub_da65a8dd;
uint256 vestingDuration;
uint256 totalReward;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699765;

function poolLength() payable {
    return poolInfo.length
}

function vestingDuration() payable {
    return vestingDuration
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function endTime() payable {
    return endTime
}

function totalReward() payable {
    return totalReward
}

function startTime() payable {
    return startTime
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

function sub_b562f7af(?) payable {
    return sub_b562f7af
}

function fund() payable {
    return fundAddress
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function devaddr() payable {
    return devaddr
}

function sub_da65a8dd(?) payable {
    return sub_da65a8dd
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

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'CoffinMaker: only from dev'
    devaddr = arg1
    emit 0x1a728d77: arg1
}

function setFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if fundAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'CoffinMaker: only from dev'
    fundAddress = arg1
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if 0 == startTime:
        revert with 0, 'not initilized yet'
    return block.timestamp >= userInfo[arg1][address(arg2)].field_512
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

function canWithdraw(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if 0 == startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if userInfo[arg1][address(arg2)].field_768 > !poolInfo[arg1].field_1280:
        revert with 0, 17
    return userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1280 <= block.timestamp
}

function sub_b4c96514(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function init(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTime:
        revert with 0, 'only one time.'
    startTime = block.timestamp
    if arg1:
        if arg1 <= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CoffinMaker: The start time must be in the future. '
        if arg1 < block.timestamp:
            revert with 0, 17
        if arg1 - block.timestamp > 720 * 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid starting time '
        startTime = arg1
    vestingDuration = 26280 * 24 * 3600
    totalReward = 80000000 * 10^18
    rewardPerSecond = arg2
    if not arg2:
        rewardPerSecond = 10^18
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg1 >= poolInfo.length:
            revert with 0, 50
        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
        poolInfo[arg1].field_512 = block.timestamp
        poolInfo[arg1].field_768 = poolInfo[arg1].field_768
        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
        emit 0x4bd31820: block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               block.timestamp,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.pool_mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint):
        revert with 0, 17
    if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint)):
        revert with 0, 17
    sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_0 = poolInfo[arg1].field_0
    poolInfo[arg1].field_256 = poolInfo[arg1].field_256
    poolInfo[arg1].field_512 = block.timestamp
    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
    poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
    emit 0x4bd31820: block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           block.timestamp,
           poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]),
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if 0 == startTime:
        revert with 0, 'not initilized yet'
    if block.timestamp < startTime:
        return 0
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][address(arg2)].field_256 >= 0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 < 0 and userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][address(arg2)].field_256 >= 0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 < 0 and userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][address(arg2)].field_256 >= 0:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_256 < 0 and (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 > userInfo[arg1][address(arg2)].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        _38 = mem[64]
        mem[64] = mem[64] + 192
        mem[_38] = 0
        mem[_38 + 32] = 0
        mem[_38 + 64] = 0
        mem[_38 + 96] = 0
        mem[_38 + 128] = 0
        mem[_38 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _41 = mem[64]
        mem[64] = mem[64] + 192
        mem[_41] = poolInfo[idx].field_0
        mem[_41 + 32] = poolInfo[idx].field_256
        mem[_41 + 64] = poolInfo[idx].field_512
        mem[_41 + 96] = poolInfo[idx].field_768
        mem[_41 + 128] = poolInfo[idx].field_1024
        mem[_41 + 160] = poolInfo[idx].field_1280
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _46 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _47 = mem[_46]
            if not mem[_46]:
                mem[_41 + 64] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = poolInfo[idx].field_256
                poolInfo[idx].field_512 = block.timestamp
                poolInfo[idx].field_768 = poolInfo[idx].field_768
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _47
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit 0x4bd31820: block.timestamp, _47, poolInfo[idx].field_768, idx
            else:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_46]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_46]):
                    revert with 0, 17
                mem[_41 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_46])
                mem[mem[64]] = 0xb4f56b2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.pool_mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                    revert with 0, 17
                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                    revert with 0, 17
                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                mem[_41 + 64] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = poolInfo[idx].field_256
                poolInfo[idx].field_512 = block.timestamp
                poolInfo[idx].field_768 = mem[_41 + 96]
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                _72 = mem[_41 + 96]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _47
                mem[mem[64] + 64] = _72
                emit 0x4bd31820: block.timestamp, _47, _72, idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setRewardPerSecond(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not startTime:
        revert with 0, 'not initilized yet'
    idx = 0
    while idx < poolInfo.length:
        _46 = mem[64]
        mem[64] = mem[64] + 192
        mem[_46] = 0
        mem[_46 + 32] = 0
        mem[_46 + 64] = 0
        mem[_46 + 96] = 0
        mem[_46 + 128] = 0
        mem[_46 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _49 = mem[64]
        mem[64] = mem[64] + 192
        mem[_49] = poolInfo[idx].field_0
        mem[_49 + 32] = poolInfo[idx].field_256
        mem[_49 + 64] = poolInfo[idx].field_512
        mem[_49 + 96] = poolInfo[idx].field_768
        mem[_49 + 128] = poolInfo[idx].field_1024
        mem[_49 + 160] = poolInfo[idx].field_1280
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_54]
            if not mem[_54]:
                mem[_49 + 64] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = poolInfo[idx].field_256
                poolInfo[idx].field_512 = block.timestamp
                poolInfo[idx].field_768 = poolInfo[idx].field_768
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _55
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit 0x4bd31820: block.timestamp, _55, poolInfo[idx].field_768, idx
            else:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_54]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_54]):
                    revert with 0, 17
                mem[_49 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_54])
                mem[mem[64]] = 0xb4f56b2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.pool_mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                    revert with 0, 17
                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                    revert with 0, 17
                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                mem[_49 + 64] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = poolInfo[idx].field_256
                poolInfo[idx].field_512 = block.timestamp
                poolInfo[idx].field_768 = mem[_49 + 96]
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                _80 = mem[_49 + 96]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _55
                mem[mem[64] + 64] = _80
                emit 0x4bd31820: block.timestamp, _55, _80, idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardPerSecond = arg1
    emit 0x5931c3cf: arg1
}

function sub_f462101e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg3 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid harvest interval'
    if arg4 > 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid lockup interval'
    idx = 0
    while idx < poolInfo.length:
        _52 = mem[64]
        mem[64] = mem[64] + 192
        mem[_52] = 0
        mem[_52 + 32] = 0
        mem[_52 + 64] = 0
        mem[_52 + 96] = 0
        mem[_52 + 128] = 0
        mem[_52 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _56 = mem[64]
        mem[64] = mem[64] + 192
        mem[_56] = poolInfo[idx].field_0
        mem[_56 + 32] = poolInfo[idx].field_256
        mem[_56 + 64] = poolInfo[idx].field_512
        mem[_56 + 96] = poolInfo[idx].field_768
        mem[_56 + 128] = poolInfo[idx].field_1024
        mem[_56 + 160] = poolInfo[idx].field_1280
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _63 = mem[_61]
            if not mem[_61]:
                mem[_56 + 64] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = poolInfo[idx].field_256
                poolInfo[idx].field_512 = block.timestamp
                poolInfo[idx].field_768 = poolInfo[idx].field_768
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _63
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit 0x4bd31820: block.timestamp, _63, poolInfo[idx].field_768, idx
            else:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_61]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_61]):
                    revert with 0, 17
                mem[_56 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_61])
                mem[mem[64]] = 0xb4f56b2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.pool_mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                    revert with 0, 17
                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                    revert with 0, 17
                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                mem[_56 + 64] = block.timestamp
                if idx >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[idx].field_0 = poolInfo[idx].field_0
                poolInfo[idx].field_256 = poolInfo[idx].field_256
                poolInfo[idx].field_512 = block.timestamp
                poolInfo[idx].field_768 = mem[_56 + 96]
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                _92 = mem[_56 + 96]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _63
                mem[mem[64] + 64] = _92
                emit 0x4bd31820: block.timestamp, _63, _92, idx
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
    poolInfo[arg1].field_1280 = arg4
    emit 0x8e437a5b: arg2, arg3, arg4, arg1
}

function sub_44780994(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        _38 = mem[64]
        mem[64] = mem[64] + 192
        mem[_38] = 0
        mem[_38 + 32] = 0
        mem[_38 + 64] = 0
        mem[_38 + 96] = 0
        mem[_38 + 128] = 0
        mem[_38 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _41 = mem[64]
        mem[64] = mem[64] + 192
        mem[_41] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_41 + 32] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_41 + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512
        mem[_41 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
        mem[_41 + 128] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
        mem[_41 + 160] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
        if block.timestamp > poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0)
            staticcall poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _46 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _47 = mem[_46]
            if not mem[_46]:
                mem[_41 + 64] = block.timestamp
                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _47
                mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
                emit 0x4bd31820: block.timestamp, _47, poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768, cd[((32 * idx) + cd[4] + 36)]
            else:
                if block.timestamp < poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond) and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_46]:
                    revert with 0, 18
                if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / mem[_46]):
                    revert with 0, 17
                mem[_41 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / mem[_46])
                mem[mem[64]] = 0xb4f56b2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.pool_mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint):
                    revert with 0, 17
                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)):
                    revert with 0, 17
                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)
                mem[_41 + 64] = block.timestamp
                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_41 + 96]
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                _72 = mem[_41 + 96]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _47
                mem[mem[64] + 64] = _72
                emit 0x4bd31820: block.timestamp, _47, _72, cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function addPool(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 6
    if stor6[address(arg2)]:
        revert with 0, 'CoffinMaker: duplicated'
    if rewardTokenAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: cannot use reward token as lpToken'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'CoffinMaker: duplicated'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not startTime:
        revert with 0, 'not initilized yet'
    if not arg5:
        if arg3 > 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid harvest interval'
        if arg4 > 336 * 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid lockup interval'
    else:
        idx = 0
        while idx < poolInfo.length:
            _184 = mem[64]
            mem[64] = mem[64] + 192
            mem[_184] = 0
            mem[_184 + 32] = 0
            mem[_184 + 64] = 0
            mem[_184 + 96] = 0
            mem[_184 + 128] = 0
            mem[_184 + 160] = 0
            if not startTime:
                revert with 0, 'not initilized yet'
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 5
            _191 = mem[64]
            mem[64] = mem[64] + 192
            mem[_191] = poolInfo[idx].field_0
            mem[_191 + 32] = poolInfo[idx].field_256
            mem[_191 + 64] = poolInfo[idx].field_512
            mem[_191 + 96] = poolInfo[idx].field_768
            mem[_191 + 128] = poolInfo[idx].field_1024
            mem[_191 + 160] = poolInfo[idx].field_1280
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _197 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _212 = mem[_197]
                if not mem[_197]:
                    mem[_191 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _212
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit 0x4bd31820: block.timestamp, _212, poolInfo[idx].field_768, idx
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not mem[_197]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_197]):
                        revert with 0, 17
                    mem[_191 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_197])
                    mem[mem[64]] = 0xb4f56b2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.pool_mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                        revert with 0, 17
                    if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                        revert with 0, 17
                    sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                    mem[_191 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = mem[_191 + 96]
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                    _241 = mem[_191 + 96]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _212
                    mem[mem[64] + 64] = _241
                    emit 0x4bd31820: block.timestamp, _212, _241, idx
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > 24 * 3600:
            revert with 0, 'CoffinMaker: invalid harvest interval'
        if arg4 > 336 * 24 * 3600:
            revert with 0, 'CoffinMaker: invalid lockup interval'
    ('le', ('param', 'arg4'), 1209600)
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    stor6[address(arg2)] = 1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    if block.timestamp > startTime:
        stor36B6[stor5.length] = block.timestamp
    else:
        stor36B6[stor5.length] = startTime
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = arg3
    stor36B6[stor5.length] = arg4
    if poolInfo.length < 1:
        revert with 0, 17
    emit 0x369b7605: arg1, arg3, arg4, poolInfo.length - 1, arg2
}



}
