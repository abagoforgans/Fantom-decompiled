contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address sub_d34cf8c5Address;
address rewardTokenAddress;
uint256 rewardPerSec;
address sub_0dd1a3efAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
mapping of uint8 stor10;

function poolLength() payable {
    return poolInfo.length
}

function sub_0dd1a3ef(?) payable {
    return sub_0dd1a3efAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function rewardPerSec() payable {
    return rewardPerSec
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function sub_d34cf8c5(?) payable {
    return sub_d34cf8c5Address
}

function startTimestamp() payable {
    return startTimestamp
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    return (arg2 - arg1)
}

function sub_7a7071f6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid zero address'
    sub_0dd1a3efAddress = address(arg1)
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

function updateStartTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'cannot change start block if farm has already started'
    if block.timestamp >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set start block in the past'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        poolInfo[idx].field_512 = arg1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    startTimestamp = arg1
    emit 0xdaf96f8e: startTimestamp
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_0dd1a3efAddress)
    staticcall sub_0dd1a3efAddress.0xb69ef8a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        if block.timestamp > poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1024:
                if poolInfo[arg1].field_256:
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[arg1].field_512 and rewardPerSec > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[arg1].field_1024:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 10^18 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        require ext_code.size(sub_0dd1a3efAddress)
        staticcall sub_0dd1a3efAddress.0xb69ef8a8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == mem[_9]
        if mem[_9]:
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_256:
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - poolInfo[idx].field_512 and rewardPerSec > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not poolInfo[idx].field_1024:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function setEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        require ext_code.size(sub_0dd1a3efAddress)
        staticcall sub_0dd1a3efAddress.0xb69ef8a8 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14] == mem[_14]
        if mem[_14]:
            if block.timestamp > poolInfo[idx].field_512:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_256:
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.timestamp - poolInfo[idx].field_512 and rewardPerSec > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not poolInfo[idx].field_1024:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    rewardPerSec = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            require ext_code.size(sub_0dd1a3efAddress)
            staticcall sub_0dd1a3efAddress.0xb69ef8a8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _22 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_22] == mem[_22]
            if mem[_22]:
                if block.timestamp > poolInfo[idx].field_512:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_256:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.timestamp - poolInfo[idx].field_512 and rewardPerSec > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not poolInfo[idx].field_1024:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^18 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                    poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if totalAllocPoint - poolInfo[arg1].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_256 = arg2
    emit 0x55683773: poolInfo[arg1].field_0, arg2, arg1
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1024:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if totalAllocPoint <= 0:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if block.timestamp - poolInfo[arg1].field_512 and rewardPerSec > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 17
    if not poolInfo[arg1].field_1024:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) - 1:
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 10
    if stor10[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            require ext_code.size(sub_0dd1a3efAddress)
            staticcall sub_0dd1a3efAddress.0xb69ef8a8 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_58] == mem[_58]
            if mem[_58]:
                if block.timestamp > poolInfo[idx].field_512:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_256:
                            if block.timestamp < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.timestamp - poolInfo[idx].field_512 and rewardPerSec > -1 / block.timestamp - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec):
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not poolInfo[idx].field_1024:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^18 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                    poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if totalAllocPoint > -arg1 - 1:
        revert with 'NH{q', 17
    totalAllocPoint += arg1
    stor10[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTimestamp:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTimestamp
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = 0
    if poolInfo.length < 1:
        revert with 'NH{q', 17
    emit addPool(address(arg2), arg1, poolInfo.length - 1);
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_0dd1a3efAddress)
    staticcall sub_0dd1a3efAddress.0xb69ef8a8 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        if block.timestamp > poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1024:
                if poolInfo[arg1].field_256:
                    if block.timestamp < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[arg1].field_512 and rewardPerSec > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[arg1].field_1024:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 10^18 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = block.timestamp
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
        revert with 'NH{q', 17
    require ext_code.size(sub_0dd1a3efAddress)
    staticcall sub_0dd1a3efAddress.0xb69ef8a8 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
        if arg2 > 0:
            if userInfo[arg1][address(msg.sender)].field_0 < arg2:
                revert with 'NH{q', 17
            userInfo[arg1][address(msg.sender)].field_0 -= arg2
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if poolInfo[arg1].field_1024 < arg2:
                revert with 'NH{q', 17
            poolInfo[arg1].field_1024 -= arg2
    else:
        if ext_call.return_data[0] <= 0:
            if arg2 > 0:
                if userInfo[arg1][address(msg.sender)].field_0 < arg2:
                    revert with 'NH{q', 17
                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if poolInfo[arg1].field_1024 < arg2:
                    revert with 'NH{q', 17
                poolInfo[arg1].field_1024 -= arg2
        else:
            require ext_code.size(sub_0dd1a3efAddress)
            staticcall sub_0dd1a3efAddress.0xb69ef8a8 with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(sub_0dd1a3efAddress)
                call sub_0dd1a3efAddress.0x2ccb1b30 with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg2 > 0:
                if userInfo[arg1][address(msg.sender)].field_0 < arg2:
                    revert with 'NH{q', 17
                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = arg2
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if poolInfo[arg1].field_1024 < arg2:
                    revert with 'NH{q', 17
                poolInfo[arg1].field_1024 -= arg2
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
