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
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699765;

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
        emit 0x4bd31820: block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1
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
    emit 0x4bd31820: block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / ext_call.return_data[0]), arg1
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
        _145 = mem[64]
        mem[64] = mem[64] + 192
        mem[_145] = 0
        mem[_145 + 32] = 0
        mem[_145 + 64] = 0
        mem[_145 + 96] = 0
        mem[_145 + 128] = 0
        mem[_145 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _148 = mem[64]
        mem[64] = mem[64] + 192
        mem[_148] = poolInfo[idx].field_0
        mem[_148 + 32] = poolInfo[idx].field_256
        mem[_148 + 64] = poolInfo[idx].field_512
        mem[_148 + 96] = poolInfo[idx].field_768
        mem[_148 + 128] = poolInfo[idx].field_1024
        mem[_148 + 160] = poolInfo[idx].field_1280
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
                _156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _157 = mem[_156]
                if not mem[_156]:
                    mem[_148 + 64] = block.timestamp
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
                    mem[mem[64] + 32] = _157
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit 0x4bd31820: block.timestamp, _157, poolInfo[idx].field_768, idx
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
                        if not mem[_156]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_156]):
                            revert with 0, 17
                        mem[_148 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_156])
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_148 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_148 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _193 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _193
                                emit 0x4bd31820: block.timestamp, _157, _193, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_148 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_148 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _227 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _227
                                emit 0x4bd31820: block.timestamp, _157, _227, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_148 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_148 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _238 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _238
                                emit 0x4bd31820: block.timestamp, _157, _238, idx
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
                                mem[_148 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_148 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _275 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _275
                                emit 0x4bd31820: block.timestamp, _157, _275, idx
                    else:
                        if TOTAL_SUPPLY < sub_b562f7af:
                            revert with 0, 17
                        if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                            revert with 0, 17
                        if not mem[_156]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_156]):
                            revert with 0, 17
                        mem[_148 + 96] = poolInfo[idx].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_156])
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_148 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_148 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _210 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _210
                                emit 0x4bd31820: block.timestamp, _157, _210, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_148 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_148 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _251 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _251
                                emit 0x4bd31820: block.timestamp, _157, _251, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_148 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_148 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _262 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _262
                                emit 0x4bd31820: block.timestamp, _157, _262, idx
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
                                mem[_148 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_148 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _286 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _286
                                emit 0x4bd31820: block.timestamp, _157, _286, idx
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
        _153 = mem[64]
        mem[64] = mem[64] + 192
        mem[_153] = 0
        mem[_153 + 32] = 0
        mem[_153 + 64] = 0
        mem[_153 + 96] = 0
        mem[_153 + 128] = 0
        mem[_153 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _156 = mem[64]
        mem[64] = mem[64] + 192
        mem[_156] = poolInfo[idx].field_0
        mem[_156 + 32] = poolInfo[idx].field_256
        mem[_156 + 64] = poolInfo[idx].field_512
        mem[_156 + 96] = poolInfo[idx].field_768
        mem[_156 + 128] = poolInfo[idx].field_1024
        mem[_156 + 160] = poolInfo[idx].field_1280
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
                _164 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _165 = mem[_164]
                if not mem[_164]:
                    mem[_156 + 64] = block.timestamp
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
                    mem[mem[64] + 32] = _165
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit 0x4bd31820: block.timestamp, _165, poolInfo[idx].field_768, idx
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
                        if not mem[_164]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_164]):
                            revert with 0, 17
                        mem[_156 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_164])
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_156 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_156 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _201 = mem[_156 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _165
                                mem[mem[64] + 64] = _201
                                emit 0x4bd31820: block.timestamp, _165, _201, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_156 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_156 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _235 = mem[_156 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _165
                                mem[mem[64] + 64] = _235
                                emit 0x4bd31820: block.timestamp, _165, _235, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_156 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_156 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _246 = mem[_156 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _165
                                mem[mem[64] + 64] = _246
                                emit 0x4bd31820: block.timestamp, _165, _246, idx
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
                                mem[_156 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_156 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _283 = mem[_156 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _165
                                mem[mem[64] + 64] = _283
                                emit 0x4bd31820: block.timestamp, _165, _283, idx
                    else:
                        if TOTAL_SUPPLY < sub_b562f7af:
                            revert with 0, 17
                        if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                            revert with 0, 17
                        if not mem[_164]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_164]):
                            revert with 0, 17
                        mem[_156 + 96] = poolInfo[idx].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_164])
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_156 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_156 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _218 = mem[_156 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _165
                                mem[mem[64] + 64] = _218
                                emit 0x4bd31820: block.timestamp, _165, _218, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_156 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_156 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _259 = mem[_156 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _165
                                mem[mem[64] + 64] = _259
                                emit 0x4bd31820: block.timestamp, _165, _259, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_156 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_156 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _270 = mem[_156 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _165
                                mem[mem[64] + 64] = _270
                                emit 0x4bd31820: block.timestamp, _165, _270, idx
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
                                mem[_156 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_156 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _294 = mem[_156 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _165
                                mem[mem[64] + 64] = _294
                                emit 0x4bd31820: block.timestamp, _165, _294, idx
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
        _159 = mem[64]
        mem[64] = mem[64] + 192
        mem[_159] = 0
        mem[_159 + 32] = 0
        mem[_159 + 64] = 0
        mem[_159 + 96] = 0
        mem[_159 + 128] = 0
        mem[_159 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _163 = mem[64]
        mem[64] = mem[64] + 192
        mem[_163] = poolInfo[idx].field_0
        mem[_163 + 32] = poolInfo[idx].field_256
        mem[_163 + 64] = poolInfo[idx].field_512
        mem[_163 + 96] = poolInfo[idx].field_768
        mem[_163 + 128] = poolInfo[idx].field_1024
        mem[_163 + 160] = poolInfo[idx].field_1280
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
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _177 = mem[_172]
                if not mem[_172]:
                    mem[_163 + 64] = block.timestamp
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
                    mem[mem[64] + 32] = _177
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit 0x4bd31820: block.timestamp, _177, poolInfo[idx].field_768, idx
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
                        if not mem[_172]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_172]):
                            revert with 0, 17
                        mem[_163 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_172])
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_163 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_163 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _213 = mem[_163 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _177
                                mem[mem[64] + 64] = _213
                                emit 0x4bd31820: block.timestamp, _177, _213, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_163 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_163 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _247 = mem[_163 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _177
                                mem[mem[64] + 64] = _247
                                emit 0x4bd31820: block.timestamp, _177, _247, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                mem[_163 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_163 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _258 = mem[_163 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _177
                                mem[mem[64] + 64] = _258
                                emit 0x4bd31820: block.timestamp, _177, _258, idx
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
                                mem[_163 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_163 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _295 = mem[_163 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _177
                                mem[mem[64] + 64] = _295
                                emit 0x4bd31820: block.timestamp, _177, _295, idx
                    else:
                        if TOTAL_SUPPLY < sub_b562f7af:
                            revert with 0, 17
                        if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                            revert with 0, 17
                        if not mem[_172]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_172]):
                            revert with 0, 17
                        mem[_163 + 96] = poolInfo[idx].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_172])
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_163 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_163 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _230 = mem[_163 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _177
                                mem[mem[64] + 64] = _230
                                emit 0x4bd31820: block.timestamp, _177, _230, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_163 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_163 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _271 = mem[_163 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _177
                                mem[mem[64] + 64] = _271
                                emit 0x4bd31820: block.timestamp, _177, _271, idx
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_163 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_163 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _282 = mem[_163 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _177
                                mem[mem[64] + 64] = _282
                                emit 0x4bd31820: block.timestamp, _177, _282, idx
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
                                mem[_163 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 = mem[_163 + 96]
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                _306 = mem[_163 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _177
                                mem[mem[64] + 64] = _306
                                emit 0x4bd31820: block.timestamp, _177, _306, idx
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
            _398 = mem[64]
            mem[64] = mem[64] + 192
            mem[_398] = 0
            mem[_398 + 32] = 0
            mem[_398 + 64] = 0
            mem[_398 + 96] = 0
            mem[_398 + 128] = 0
            mem[_398 + 160] = 0
            if not startTime:
                revert with 0, 'not initilized yet'
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 5
            _404 = mem[64]
            mem[64] = mem[64] + 192
            mem[_404] = poolInfo[idx].field_0
            mem[_404 + 32] = poolInfo[idx].field_256
            mem[_404 + 64] = poolInfo[idx].field_512
            mem[_404 + 96] = poolInfo[idx].field_768
            mem[_404 + 128] = poolInfo[idx].field_1024
            mem[_404 + 160] = poolInfo[idx].field_1280
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
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _433 = mem[_428]
                    if not mem[_428]:
                        mem[_404 + 64] = block.timestamp
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
                        mem[mem[64] + 32] = _433
                        mem[mem[64] + 64] = poolInfo[idx].field_768
                        emit 0x4bd31820: block.timestamp, _433, poolInfo[idx].field_768, idx
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
                            if not mem[_428]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_428]):
                                revert with 0, 17
                            mem[_404 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_428])
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                        revert with 0, 17
                                    if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                        revert with 0, 17
                                    sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                    mem[_404 + 64] = block.timestamp
                                    if idx >= poolInfo.length:
                                        revert with 0, 50
                                    mem[0] = 5
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = mem[_404 + 96]
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                    _469 = mem[_404 + 96]
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _433
                                    mem[mem[64] + 64] = _469
                                    emit 0x4bd31820: block.timestamp, _433, _469, idx
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                        revert with 0, 17
                                    if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                        revert with 0, 17
                                    sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                    mem[_404 + 64] = block.timestamp
                                    if idx >= poolInfo.length:
                                        revert with 0, 50
                                    mem[0] = 5
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = mem[_404 + 96]
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                    _503 = mem[_404 + 96]
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _433
                                    mem[mem[64] + 64] = _503
                                    emit 0x4bd31820: block.timestamp, _433, _503, idx
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint):
                                        revert with 0, 17
                                    if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)):
                                        revert with 0, 17
                                    sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint)
                                    mem[_404 + 64] = block.timestamp
                                    if idx >= poolInfo.length:
                                        revert with 0, 50
                                    mem[0] = 5
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = mem[_404 + 96]
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                    _514 = mem[_404 + 96]
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _433
                                    mem[mem[64] + 64] = _514
                                    emit 0x4bd31820: block.timestamp, _433, _514, idx
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
                                    mem[_404 + 64] = block.timestamp
                                    if idx >= poolInfo.length:
                                        revert with 0, 50
                                    mem[0] = 5
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = mem[_404 + 96]
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                    _551 = mem[_404 + 96]
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _433
                                    mem[mem[64] + 64] = _551
                                    emit 0x4bd31820: block.timestamp, _433, _551, idx
                        else:
                            if TOTAL_SUPPLY < sub_b562f7af:
                                revert with 0, 17
                            if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                                revert with 0, 17
                            if not mem[_428]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_428]):
                                revert with 0, 17
                            mem[_404 + 96] = poolInfo[idx].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_428])
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                        revert with 0, 17
                                    if sub_b562f7af > !TOTAL_SUPPLY:
                                        revert with 0, 17
                                    sub_b562f7af += TOTAL_SUPPLY
                                    mem[_404 + 64] = block.timestamp
                                    if idx >= poolInfo.length:
                                        revert with 0, 50
                                    mem[0] = 5
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = mem[_404 + 96]
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                    _486 = mem[_404 + 96]
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _433
                                    mem[mem[64] + 64] = _486
                                    emit 0x4bd31820: block.timestamp, _433, _486, idx
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                        revert with 0, 17
                                    if sub_b562f7af > !TOTAL_SUPPLY:
                                        revert with 0, 17
                                    sub_b562f7af += TOTAL_SUPPLY
                                    mem[_404 + 64] = block.timestamp
                                    if idx >= poolInfo.length:
                                        revert with 0, 50
                                    mem[0] = 5
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = mem[_404 + 96]
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                    _527 = mem[_404 + 96]
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _433
                                    mem[mem[64] + 64] = _527
                                    emit 0x4bd31820: block.timestamp, _433, _527, idx
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                        revert with 0, 17
                                    if sub_b562f7af > !TOTAL_SUPPLY:
                                        revert with 0, 17
                                    sub_b562f7af += TOTAL_SUPPLY
                                    mem[_404 + 64] = block.timestamp
                                    if idx >= poolInfo.length:
                                        revert with 0, 50
                                    mem[0] = 5
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = mem[_404 + 96]
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                    _538 = mem[_404 + 96]
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _433
                                    mem[mem[64] + 64] = _538
                                    emit 0x4bd31820: block.timestamp, _433, _538, idx
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
                                    mem[_404 + 64] = block.timestamp
                                    if idx >= poolInfo.length:
                                        revert with 0, 50
                                    mem[0] = 5
                                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                                    poolInfo[idx].field_512 = block.timestamp
                                    poolInfo[idx].field_768 = mem[_404 + 96]
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                                    _562 = mem[_404 + 96]
                                    mem[mem[64]] = block.timestamp
                                    mem[mem[64] + 32] = _433
                                    mem[mem[64] + 64] = _562
                                    emit 0x4bd31820: block.timestamp, _433, _562, idx
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

function sub_44780994(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        _145 = mem[64]
        mem[64] = mem[64] + 192
        mem[_145] = 0
        mem[_145 + 32] = 0
        mem[_145 + 64] = 0
        mem[_145 + 96] = 0
        mem[_145 + 128] = 0
        mem[_145 + 160] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _148 = mem[64]
        mem[64] = mem[64] + 192
        mem[_148] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_148 + 32] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_148 + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512
        mem[_148 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
        mem[_148 + 128] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
        mem[_148 + 160] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
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
                _156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _157 = mem[_156]
                if not mem[_156]:
                    mem[_148 + 64] = block.timestamp
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
                    mem[mem[64] + 32] = _157
                    mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
                    emit 0x4bd31820: block.timestamp, _157, poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768, cd[((32 * idx) + cd[4] + 36)]
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
                        if not mem[_156]:
                            revert with 0, 18
                        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / mem[_156]):
                            revert with 0, 17
                        mem[_148 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / mem[_156])
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)
                                mem[_148 + 64] = block.timestamp
                                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_148 + 96]
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                                _193 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _193
                                emit 0x4bd31820: block.timestamp, _157, _193, cd[((32 * idx) + cd[4] + 36)]
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)
                                mem[_148 + 64] = block.timestamp
                                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_148 + 96]
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                                _227 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _227
                                emit 0x4bd31820: block.timestamp, _157, _227, cd[((32 * idx) + cd[4] + 36)]
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint):
                                    revert with 0, 17
                                if sub_b562f7af > !(sub_b562f7af + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)):
                                    revert with 0, 17
                                sub_b562f7af = (2 * sub_b562f7af) + ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint)
                                mem[_148 + 64] = block.timestamp
                                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_148 + 96]
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                                _238 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _238
                                emit 0x4bd31820: block.timestamp, _157, _238, cd[((32 * idx) + cd[4] + 36)]
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
                                mem[_148 + 64] = block.timestamp
                                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_148 + 96]
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                                _275 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _275
                                emit 0x4bd31820: block.timestamp, _157, _275, cd[((32 * idx) + cd[4] + 36)]
                    else:
                        if TOTAL_SUPPLY < sub_b562f7af:
                            revert with 0, 17
                        if TOTAL_SUPPLY - sub_b562f7af and 10^12 > -1 / TOTAL_SUPPLY - sub_b562f7af:
                            revert with 0, 17
                        if not mem[_156]:
                            revert with 0, 18
                        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_156]):
                            revert with 0, 17
                        mem[_148 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + ((10^12 * TOTAL_SUPPLY) - (10^12 * sub_b562f7af) / mem[_156])
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_148 + 64] = block.timestamp
                                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_148 + 96]
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                                _210 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _210
                                emit 0x4bd31820: block.timestamp, _157, _210, cd[((32 * idx) + cd[4] + 36)]
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_148 + 64] = block.timestamp
                                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_148 + 96]
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                                _251 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _251
                                emit 0x4bd31820: block.timestamp, _157, _251, cd[((32 * idx) + cd[4] + 36)]
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_b562f7af > !(TOTAL_SUPPLY - sub_b562f7af):
                                    revert with 0, 17
                                if sub_b562f7af > !TOTAL_SUPPLY:
                                    revert with 0, 17
                                sub_b562f7af += TOTAL_SUPPLY
                                mem[_148 + 64] = block.timestamp
                                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_148 + 96]
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                                _262 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _262
                                emit 0x4bd31820: block.timestamp, _157, _262, cd[((32 * idx) + cd[4] + 36)]
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
                                mem[_148 + 64] = block.timestamp
                                if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 5
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = mem[_148 + 96]
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                                _286 = mem[_148 + 96]
                                mem[mem[64]] = block.timestamp
                                mem[mem[64] + 32] = _157
                                mem[mem[64] + 64] = _286
                                emit 0x4bd31820: block.timestamp, _157, _286, cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
