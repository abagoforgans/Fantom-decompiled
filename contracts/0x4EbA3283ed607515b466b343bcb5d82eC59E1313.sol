contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2, address arg3)
#  - harvest(uint256 arg1, address arg2)
#  - addPool(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const sub_86782813(?) = (720 * 24 * 3600)

const sub_fbbb0df3(?) = (336 * 24 * 3600)

const MAXIMUM_HARVEST_INTERVAL = (24 * 3600)


address owner;
address rewardTokenAddress;
address dev_fundAddress;
address sub_3905d871Address;
array of struct poolInfo;
mapping of uint8 stor6;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
uint256 endTime;
uint256 rewardPerSecond;
uint256 sub_b562f7af;
uint256 sub_da65a8dd;
uint256 TOTAL_SUPPLY;

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
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function endTime() payable {
    return endTime
}

function sub_3905d871(?) payable {
    return sub_3905d871Address
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

function TOTAL_SUPPLY() payable {
    return TOTAL_SUPPLY
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

function dev_fund() payable {
    return dev_fundAddress
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
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

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if 0 == startTime:
        revert with 0, 'not initilized yet'
    return block.timestamp >= userInfo[arg1][address(arg2)].field_512
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTime >= block.timestamp:
        revert with 0, 'already started'
    startTime = arg1
}

function setMarketingFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if arg1 != msg.sender:
            revert with 0, 'CoffinMaker: only from dev'
    sub_3905d871Address = arg1
    emit 0xb5954fe3: arg1
}

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if dev_fundAddress != msg.sender:
            revert with 0, 'CoffinMaker: only from dev'
    dev_fundAddress = arg1
    emit 0x1a728d77: arg1
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

function sub_feeb26a8(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if userInfo[arg1][msg.sender].field_768 > !poolInfo[arg1].field_1280:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_768 + poolInfo[arg1].field_1280 < block.timestamp:
        revert with 0, 17
    return (userInfo[arg1][msg.sender].field_768 + poolInfo[arg1].field_1280 - block.timestamp)
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
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function init(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTime:
        revert with 0, 'only one time.'
    if not arg1:
        revert with 0, 'reward token address error'
    rewardTokenAddress = arg1
    startTime = block.timestamp
    if arg2:
        if arg2 <= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CoffinMaker: The start time must be in the future. '
        if arg2 < block.timestamp:
            revert with 0, 17
        if arg2 - block.timestamp > 720 * 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid starting time '
        startTime = arg2
    rewardPerSecond = arg3
    if not arg3:
        rewardPerSecond = 10^18
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x51e238e3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_b562f7af > !ext_call.return_data[0]:
        revert with 0, 17
    sub_b562f7af += ext_call.return_data[0]
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
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if not poolInfo[arg1].field_256:
        revert with 0, 'cannot update this pool for now'
    if sub_b562f7af >= TOTAL_SUPPLY:
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280
    if block.timestamp <= poolInfo[arg1].field_512:
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280
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
        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
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
    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint):
        revert with 0, 17
    if sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) <= TOTAL_SUPPLY:
        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if not dev_fundAddress:
            if not sub_3905d871Address:
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args address(this.address), (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
            else:
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
        else:
            if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                revert with 0, 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0x5c6b16c1 with:
                 gas gas_remaining wei
                args dev_fundAddress, 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not sub_3905d871Address:
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
            else:
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
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
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               block.timestamp,
               poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]),
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280
    if TOTAL_SUPPLY < sub_b562f7af:
        revert with 0, 17
    if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / ext_call.return_data[0]):
        revert with 0, 17
    if not dev_fundAddress:
        if not sub_3905d871Address:
            if TOTAL_SUPPLY - sub_b562f7af < 0:
                revert with 0, 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0x5c6b16c1 with:
                 gas gas_remaining wei
                args address(this.address), TOTAL_SUPPLY - sub_b562f7af
        else:
            if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                revert with 0, 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0x5c6b16c1 with:
                 gas gas_remaining wei
                args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if TOTAL_SUPPLY - sub_b562f7af < 0:
                revert with 0, 17
            if TOTAL_SUPPLY - sub_b562f7af < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                revert with 0, 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0x5c6b16c1 with:
                 gas gas_remaining wei
                args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
    else:
        if TOTAL_SUPPLY - sub_b562f7af / 97 and 12 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
            revert with 0, 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0x5c6b16c1 with:
             gas gas_remaining wei
            args dev_fundAddress, 12 * TOTAL_SUPPLY - sub_b562f7af / 97
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_3905d871Address:
            if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                revert with 0, 17
            if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 0:
                revert with 0, 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0x5c6b16c1 with:
                 gas gas_remaining wei
                args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
        else:
            if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                revert with 0, 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0x5c6b16c1 with:
                 gas gas_remaining wei
                args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                revert with 0, 17
            if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                revert with 0, 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0x5c6b16c1 with:
                 gas gas_remaining wei
                args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
        revert with 0, 17
    if sub_b562f7af > !TOTAL_SUPPLY:
        revert with 0, 17
    sub_b562f7af += TOTAL_SUPPLY
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_0 = poolInfo[arg1].field_0
    poolInfo[arg1].field_256 = poolInfo[arg1].field_256
    poolInfo[arg1].field_512 = block.timestamp
    poolInfo[arg1].field_768 += (10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / ext_call.return_data[0]
    poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           block.timestamp,
           poolInfo[arg1].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / ext_call.return_data[0]),
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        _109 = mem[64]
        mem[64] = mem[64] + 192
        mem[_109] = 0
        mem[_109 + 32] = 0
        mem[_109 + 64] = 0
        mem[_109 + 96] = 0
        mem[_109 + 128] = 0
        mem[_109 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _112 = mem[64]
        mem[64] = mem[64] + 192
        mem[_112] = poolInfo[idx].field_0
        mem[_112 + 32] = poolInfo[idx].field_256
        mem[_112 + 64] = poolInfo[idx].field_512
        mem[_112 + 96] = poolInfo[idx].field_768
        mem[_112 + 128] = poolInfo[idx].field_1024
        mem[_112 + 160] = poolInfo[idx].field_1280
        if not poolInfo[idx].field_256:
            revert with 0, 'cannot update this pool for now'
        if sub_b562f7af < TOTAL_SUPPLY:
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_120]:
                    mem[_112 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                        revert with 0, 17
                    if sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) <= TOTAL_SUPPLY:
                        if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_120]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_120]):
                            revert with 0, 17
                        mem[_112 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_120])
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                            revert with 0, 17
                        if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                            revert with 0, 17
                        sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                    else:
                        if TOTAL_SUPPLY < sub_b562f7af:
                            revert with 0, 17
                        if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                            revert with 0, 17
                        if not mem[_120]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_120]):
                            revert with 0, 17
                        mem[_112 + 96] = poolInfo[idx].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_120])
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if TOTAL_SUPPLY - sub_b562f7af < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af
                            else:
                                if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if TOTAL_SUPPLY - sub_b562f7af < 0:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
                        else:
                            if TOTAL_SUPPLY - sub_b562f7af / 97 and 12 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * TOTAL_SUPPLY - sub_b562f7af / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
                            else:
                                if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                            revert with 0, 17
                        if sub_b562f7af > !TOTAL_SUPPLY:
                            revert with 0, 17
                        sub_b562f7af += TOTAL_SUPPLY
                    mem[_112 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = mem[_112 + 96]
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
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
        _113 = mem[64]
        mem[64] = mem[64] + 192
        mem[_113] = 0
        mem[_113 + 32] = 0
        mem[_113 + 64] = 0
        mem[_113 + 96] = 0
        mem[_113 + 128] = 0
        mem[_113 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _116 = mem[64]
        mem[64] = mem[64] + 192
        mem[_116] = poolInfo[idx].field_0
        mem[_116 + 32] = poolInfo[idx].field_256
        mem[_116 + 64] = poolInfo[idx].field_512
        mem[_116 + 96] = poolInfo[idx].field_768
        mem[_116 + 128] = poolInfo[idx].field_1024
        mem[_116 + 160] = poolInfo[idx].field_1280
        if not poolInfo[idx].field_256:
            revert with 0, 'cannot update this pool for now'
        if sub_b562f7af < TOTAL_SUPPLY:
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_124]:
                    mem[_116 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                        revert with 0, 17
                    if sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) <= TOTAL_SUPPLY:
                        if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_124]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_124]):
                            revert with 0, 17
                        mem[_116 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_124])
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                            revert with 0, 17
                        if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                            revert with 0, 17
                        sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                    else:
                        if TOTAL_SUPPLY < sub_b562f7af:
                            revert with 0, 17
                        if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                            revert with 0, 17
                        if not mem[_124]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_124]):
                            revert with 0, 17
                        mem[_116 + 96] = poolInfo[idx].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_124])
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if TOTAL_SUPPLY - sub_b562f7af < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af
                            else:
                                if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if TOTAL_SUPPLY - sub_b562f7af < 0:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
                        else:
                            if TOTAL_SUPPLY - sub_b562f7af / 97 and 12 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * TOTAL_SUPPLY - sub_b562f7af / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
                            else:
                                if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                            revert with 0, 17
                        if sub_b562f7af > !TOTAL_SUPPLY:
                            revert with 0, 17
                        sub_b562f7af += TOTAL_SUPPLY
                    mem[_116 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = mem[_116 + 96]
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardPerSecond = arg1
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
        _121 = mem[64]
        mem[64] = mem[64] + 192
        mem[_121] = 0
        mem[_121 + 32] = 0
        mem[_121 + 64] = 0
        mem[_121 + 96] = 0
        mem[_121 + 128] = 0
        mem[_121 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _125 = mem[64]
        mem[64] = mem[64] + 192
        mem[_125] = poolInfo[idx].field_0
        mem[_125 + 32] = poolInfo[idx].field_256
        mem[_125 + 64] = poolInfo[idx].field_512
        mem[_125 + 96] = poolInfo[idx].field_768
        mem[_125 + 128] = poolInfo[idx].field_1024
        mem[_125 + 160] = poolInfo[idx].field_1280
        if not poolInfo[idx].field_256:
            revert with 0, 'cannot update this pool for now'
        if sub_b562f7af < TOTAL_SUPPLY:
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _134 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_134]:
                    mem[_125 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                        revert with 0, 17
                    if sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) <= TOTAL_SUPPLY:
                        if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_134]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_134]):
                            revert with 0, 17
                        mem[_125 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_134])
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                            revert with 0, 17
                        if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                            revert with 0, 17
                        sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                    else:
                        if TOTAL_SUPPLY < sub_b562f7af:
                            revert with 0, 17
                        if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                            revert with 0, 17
                        if not mem[_134]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_134]):
                            revert with 0, 17
                        mem[_125 + 96] = poolInfo[idx].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_134])
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if TOTAL_SUPPLY - sub_b562f7af < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af
                            else:
                                if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if TOTAL_SUPPLY - sub_b562f7af < 0:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
                        else:
                            if TOTAL_SUPPLY - sub_b562f7af / 97 and 12 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * TOTAL_SUPPLY - sub_b562f7af / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
                            else:
                                if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                            revert with 0, 17
                        if sub_b562f7af > !TOTAL_SUPPLY:
                            revert with 0, 17
                        sub_b562f7af += TOTAL_SUPPLY
                    mem[_125 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = mem[_125 + 96]
                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
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
        _109 = mem[64]
        mem[64] = mem[64] + 192
        mem[_109] = 0
        mem[_109 + 32] = 0
        mem[_109 + 64] = 0
        mem[_109 + 96] = 0
        mem[_109 + 128] = 0
        mem[_109 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _112 = mem[64]
        mem[64] = mem[64] + 192
        mem[_112] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_112 + 32] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_112 + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512
        mem[_112 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
        mem[_112 + 128] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
        mem[_112 + 160] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
        if not poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256:
            revert with 0, 'cannot update this pool for now'
        if sub_b562f7af < TOTAL_SUPPLY:
            if block.timestamp > poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0)
                staticcall poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_120]:
                    mem[_112 + 64] = block.timestamp
                    if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
                else:
                    if block.timestamp < poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond) and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint):
                        revert with 0, 17
                    if sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) <= TOTAL_SUPPLY:
                        if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_120]:
                            revert with 0, 18
                        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / mem[_120]):
                            revert with 0, 17
                        mem[_112 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / mem[_120])
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint):
                            revert with 0, 17
                        if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)):
                            revert with 0, 17
                        sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)
                    else:
                        if TOTAL_SUPPLY < sub_b562f7af:
                            revert with 0, 17
                        if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                            revert with 0, 17
                        if not mem[_120]:
                            revert with 0, 18
                        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_120]):
                            revert with 0, 17
                        mem[_112 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_120])
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if TOTAL_SUPPLY - sub_b562f7af < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af
                            else:
                                if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if TOTAL_SUPPLY - sub_b562f7af < 0:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (8 * TOTAL_SUPPLY - sub_b562f7af / 97)
                        else:
                            if TOTAL_SUPPLY - sub_b562f7af / 97 and 12 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * TOTAL_SUPPLY - sub_b562f7af / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97)
                            else:
                                if TOTAL_SUPPLY - sub_b562f7af / 97 and 8 > -1 / TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * TOTAL_SUPPLY - sub_b562f7af / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if TOTAL_SUPPLY - sub_b562f7af < 12 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                if TOTAL_SUPPLY - sub_b562f7af - (12 * TOTAL_SUPPLY - sub_b562f7af / 97) < 8 * TOTAL_SUPPLY - sub_b562f7af / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args address(this.address), TOTAL_SUPPLY - sub_b562f7af - (5 * TOTAL_SUPPLY - sub_b562f7af / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                            revert with 0, 17
                        if sub_b562f7af > !TOTAL_SUPPLY:
                            revert with 0, 17
                        sub_b562f7af += TOTAL_SUPPLY
                    mem[_112 + 64] = block.timestamp
                    if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 5
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_112 + 96]
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
