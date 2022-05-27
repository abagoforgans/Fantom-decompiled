contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
uint256 stor1;
address rewardTokenAddress;
uint256 rewardPerSecond;
address fundAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 totalLockedUpRewards;
mapping of uint8 stor9;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;

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

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function fund() payable {
    return fundAddress
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
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
    return block.timestamp >= userInfo[arg1][address(arg2)].field_512
}

function setRewardPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerSecond = arg1
    emit 0x9981f93e: arg1
}

function setFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid zero address'
    fundAddress = arg1
    emit SetFund(arg1);
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

function set(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 336 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
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
    emit SetPool(arg2, arg3, arg1);
}

function add(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 336 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    stor9[address(arg2)] = 1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    stor36B6[stor5.length] = block.timestamp
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = arg3
    if poolInfo.length < 1:
        revert with 0, 17
    emit 0x5508da90: arg1, arg3, poolInfo.length - 1, arg2
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
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
        emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
        return poolInfo[arg1].field_0, poolInfo[arg1].field_256, block.timestamp, poolInfo[arg1].field_768, poolInfo[arg1].field_1024
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
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_0 = poolInfo[arg1].field_0
    poolInfo[arg1].field_256 = poolInfo[arg1].field_256
    poolInfo[arg1].field_512 = block.timestamp
    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
    poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
    emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1);
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           block.timestamp,
           poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]),
           poolInfo[arg1].field_1024
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
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        _31 = mem[64]
        mem[64] = mem[64] + 160
        mem[_31] = 0
        mem[_31 + 32] = 0
        mem[_31 + 64] = 0
        mem[_31 + 96] = 0
        mem[_31 + 128] = 0
        if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _33 = mem[64]
        mem[64] = mem[64] + 160
        mem[_33] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_33 + 32] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_33 + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[_33 + 96] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768
        mem[_33 + 128] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024
        if block.timestamp < poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
            revert with 0, 17
        if block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0)
            staticcall poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _38 = mem[_37]
            if not mem[_37]:
                mem[_33 + 64] = block.timestamp
                if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.timestamp
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _38
                mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768
                emit UpdatePool(block.timestamp, _38, poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768, cd[((32 * idx) + arg1 + 36)]);
            else:
                if block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond) and poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_37]:
                    revert with 0, 18
                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / mem[_37]):
                    revert with 0, 17
                mem[_33 + 96] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / mem[_37])
                mem[_33 + 64] = block.timestamp
                if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.timestamp
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 = mem[_33 + 96]
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024
                _58 = mem[_33 + 96]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _38
                mem[mem[64] + 64] = _58
                emit UpdatePool(block.timestamp, _38, _58, cd[((32 * idx) + arg1 + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        if block.timestamp >= userInfo[arg1][msg.sender].field_512:
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
                if block.timestamp > !poolInfo[arg1].field_1024:
                    revert with 0, 17
                userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
                require ext_code.size(fundAddress)
                call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args rewardTokenAddress, msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
        emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
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
            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            if block.timestamp >= userInfo[arg1][msg.sender].field_512:
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
                    if block.timestamp > !poolInfo[arg1].field_1024:
                        revert with 0, 17
                    userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
                    require ext_code.size(fundAddress)
                    call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args rewardTokenAddress, msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
            emit Harvest(((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
        else:
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
            if arg1 >= poolInfo.length:
                revert with 0, 50
            poolInfo[arg1].field_0 = poolInfo[arg1].field_0
            poolInfo[arg1].field_256 = poolInfo[arg1].field_256
            poolInfo[arg1].field_512 = block.timestamp
            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1);
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            if block.timestamp >= userInfo[arg1][msg.sender].field_512:
                if ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256:
                    userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
                    if block.timestamp > !poolInfo[arg1].field_1024:
                        revert with 0, 17
                    userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
                    require ext_code.size(fundAddress)
                    call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args rewardTokenAddress, msg.sender, ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Harvest((((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
            emit Harvest((((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
    stor1 = 1
}

function harvestAllRewards() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 6)
        if userInfo[idx][msg.sender].field_0:
            if stor1 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor1 = 2
            _86 = mem[64]
            mem[64] = mem[64] + 160
            mem[_86] = 0
            mem[_86 + 32] = 0
            mem[_86 + 64] = 0
            mem[_86 + 96] = 0
            mem[_86 + 128] = 0
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 5
            _89 = mem[64]
            mem[64] = mem[64] + 160
            mem[_89] = poolInfo[idx].field_0
            mem[_89 + 32] = poolInfo[idx].field_256
            mem[_89 + 64] = poolInfo[idx].field_512
            mem[_89 + 96] = poolInfo[idx].field_768
            mem[_89 + 128] = poolInfo[idx].field_1024
            if block.timestamp < poolInfo[idx].field_512:
                revert with 0, 17
            if not block.timestamp - poolInfo[idx].field_512:
                if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12 < userInfo[idx][msg.sender].field_256:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = sha3(idx, 6)
                if block.timestamp >= userInfo[idx][msg.sender].field_512:
                    if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256:
                        userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12
                        if block.timestamp > !poolInfo[idx].field_1024:
                            revert with 0, 17
                        userInfo[idx][msg.sender].field_512 = block.timestamp + poolInfo[idx].field_1024
                        mem[mem[64] + 4] = rewardTokenAddress
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                        require ext_code.size(fundAddress)
                        call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args rewardTokenAddress, msg.sender, (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Harvest(((userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
                userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12
                mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                emit Harvest(((userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _96 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _97 = mem[_96]
                if not mem[_96]:
                    mem[_89 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    mem[mem[64] + 32] = _97
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _97, poolInfo[idx].field_768, idx);
                    if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12 < userInfo[idx][msg.sender].field_256:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 6)
                    if block.timestamp >= userInfo[idx][msg.sender].field_512:
                        if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256:
                            userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12
                            if block.timestamp > !poolInfo[idx].field_1024:
                                revert with 0, 17
                            userInfo[idx][msg.sender].field_512 = block.timestamp + poolInfo[idx].field_1024
                            mem[mem[64] + 4] = rewardTokenAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                            require ext_code.size(fundAddress)
                            call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args rewardTokenAddress, msg.sender, (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Harvest(((userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
                    userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12
                    mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                    emit Harvest(((userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
                else:
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not mem[_96]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_96]):
                        revert with 0, 17
                    mem[_89 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_96])
                    mem[_89 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = mem[_89 + 96]
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    _142 = mem[_89 + 96]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _97
                    mem[mem[64] + 64] = _142
                    emit UpdatePool(block.timestamp, _97, _142, idx);
                    _151 = mem[_89 + 96]
                    if userInfo[idx][msg.sender].field_0 and mem[_89 + 96] > -1 / userInfo[idx][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_0 * mem[_89 + 96] / 10^12 < userInfo[idx][msg.sender].field_256:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 6)
                    if block.timestamp >= userInfo[idx][msg.sender].field_512:
                        if (userInfo[idx][msg.sender].field_0 * _151 / 10^12) - userInfo[idx][msg.sender].field_256:
                            userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * _151 / 10^12
                            if block.timestamp > !poolInfo[idx].field_1024:
                                revert with 0, 17
                            userInfo[idx][msg.sender].field_512 = block.timestamp + poolInfo[idx].field_1024
                            mem[mem[64] + 4] = rewardTokenAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = (userInfo[idx][msg.sender].field_0 * _151 / 10^12) - userInfo[idx][msg.sender].field_256
                            require ext_code.size(fundAddress)
                            call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args rewardTokenAddress, msg.sender, (userInfo[idx][msg.sender].field_0 * _151 / 10^12) - userInfo[idx][msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Harvest(((userInfo[idx][msg.sender].field_0 * _151 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
                    userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * _151 / 10^12
                    mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * _151 / 10^12) - userInfo[idx][msg.sender].field_256
                    emit Harvest(((userInfo[idx][msg.sender].field_0 * _151 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
            stor1 = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
