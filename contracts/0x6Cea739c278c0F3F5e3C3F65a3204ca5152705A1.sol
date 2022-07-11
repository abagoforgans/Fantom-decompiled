contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1)
#
const MAXIMUM_HARVEST_INTERVAL = (24 * 3600)


uint8 stor0; offset 160
address owner;
uint256 stor1;
address rewardTokenAddress;
address dev_fundAddress;
address sub_3905d871Address;
address sub_0c0dc382Address;
uint256 rewardPerSecond;
uint256 bonusMultiplier;
uint256 startTime;
uint256 totalAllocPoint;
uint8 stor11;
address stor11;
address fundAddress; offset 8
array of struct poolInfo;
mapping of struct userInfo;

function poolLength() payable {
    return poolInfo.length
}

function sub_0c0dc382(?) payable {
    return sub_0c0dc382Address
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

function sub_3905d871(?) payable {
    return sub_3905d871Address
}

function isInitialized() payable {
    return bool(uint8(stor11.field_0))
}

function paused() payable {
    return bool(stor0)
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
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024,
           userInfo[arg1][arg2].field_1280,
           userInfo[arg1][arg2].field_1536,
           userInfo[arg1][arg2].field_1792
}

function bonusMultiplier() payable {
    return bonusMultiplier
}

function fund() payable {
    return fundAddress
}

function dev_fund() payable {
    return dev_fundAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function fromWei(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 / 10^18)
}

function sub_cf94ee96(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    bonusMultiplier = arg1
}

function setMarketingFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if arg1 != msg.sender:
            revert with 0, 'CoffinMaker: only from dev'
    sub_3905d871Address = arg1
}

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if dev_fundAddress != msg.sender:
            revert with 0, 'CoffinMaker: only from dev'
    dev_fundAddress = arg1
}

function setDaoFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if dev_fundAddress != msg.sender:
            revert with 0, 'CoffinMaker: only from dev'
    sub_0c0dc382Address = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 and bonusMultiplier > -1 / arg2 - arg1:
        revert with 0, 17
    return ((arg2 * bonusMultiplier) - (arg1 * bonusMultiplier))
}

function setfund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'Invalid zero address'
    fundAddress = arg1
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if not startTime:
        revert with 0, 'not initilized yet'
    return block.timestamp >= userInfo[arg1][address(arg2)].field_1792
}

function reviseDeposit(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    userInfo[arg1][address(arg2)].field_1024 = arg3
    emit 0x40d6e8e3: arg1, address(arg2), arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_fb39d1e3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if userInfo[arg1][address(arg2)].field_768:
        if block.timestamp < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        return (block.timestamp - userInfo[arg1][address(arg2)].field_768)
    if block.timestamp < userInfo[arg1][address(arg2)].field_1024:
        revert with 0, 17
    return (block.timestamp - userInfo[arg1][address(arg2)].field_1024)
}

function sub_9f6c5426(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if arg2 < 24 * 3600:
        if 0 >= poolInfo[arg1].field_1024:
            return 0
        if poolInfo[arg1].field_1024 < 0:
            revert with 0, 17
        return poolInfo[arg1].field_1024
    if arg2 / 24 * 3600 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg2 / 24 * 3600 >= poolInfo[arg1].field_1024:
        return 0
    if poolInfo[arg1].field_1024 < 10^18 * arg2 / 24 * 3600:
        revert with 0, 17
    return (poolInfo[arg1].field_1024 - (10^18 * arg2 / 24 * 3600))
}

function sub_c0aa2852(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if uint8(stor11.field_0):
        revert with 0, 'already initialized'
    if startTime:
        revert with 0, 'only one time.'
    if not address(arg1):
        revert with 0, 'reward token address error'
    rewardTokenAddress = address(arg1)
    startTime = arg2
    fundAddress = address(arg4)
    rewardPerSecond = arg3
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = address(arg1)
    poolInfo[poolInfo.length].field_256 = 1000
    poolInfo[poolInfo.length].field_512 = arg2
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = 14 * 10^18
    poolInfo[poolInfo.length].field_1280 = 600
    uint8(stor11.field_0) = 1
    if totalAllocPoint > -1001:
        revert with 0, 17
    totalAllocPoint += 1000
}

function sub_7e668b42(?) payable {
    require calldata.size - 4 >= 96
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if arg2 < 24 * 3600:
        if 0 >= poolInfo[arg1].field_1024:
            if arg3 and 0 > -1 / arg3:
                revert with 0, 17
            if arg3 < 0:
                revert with 0, 17
            return 0, arg3
        if poolInfo[arg1].field_1024 < 0:
            revert with 0, 17
        if arg3 and poolInfo[arg1].field_1024 / 10^18 > -1 / arg3:
            revert with 0, 17
        if arg3 < arg3 * poolInfo[arg1].field_1024 / 10^18 / 100:
            revert with 0, 17
        return arg3 * poolInfo[arg1].field_1024 / 10^18 / 100, arg3 - (arg3 * poolInfo[arg1].field_1024 / 10^18 / 100)
    if arg2 / 24 * 3600 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg2 / 24 * 3600 >= poolInfo[arg1].field_1024:
        if arg3 and 0 > -1 / arg3:
            revert with 0, 17
        if arg3 < 0:
            revert with 0, 17
        return 0, arg3
    if poolInfo[arg1].field_1024 < 10^18 * arg2 / 24 * 3600:
        revert with 0, 17
    if arg3 and poolInfo[arg1].field_1024 - (10^18 * arg2 / 24 * 3600) / 10^18 > -1 / arg3:
        revert with 0, 17
    if arg3 < arg3 * poolInfo[arg1].field_1024 - (10^18 * arg2 / 24 * 3600) / 10^18 / 100:
        revert with 0, 17
    return arg3 * poolInfo[arg1].field_1024 - (10^18 * arg2 / 24 * 3600) / 10^18 / 100, 
           arg3 - (arg3 * poolInfo[arg1].field_1024 - (10^18 * arg2 / 24 * 3600) / 10^18 / 100)
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
    if block.timestamp - poolInfo[arg1].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * bonusMultiplier) - (poolInfo[arg1].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[arg1].field_512 * bonusMultiplier):
        revert with 0, 17
    if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * bonusMultiplier) - (poolInfo[arg1].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[arg1].field_512 * bonusMultiplier):
                revert with 0, 17
            if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if not dev_fundAddress:
                if not sub_3905d871Address:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                        revert with 0, 17
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
            else:
                if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args dev_fundAddress, 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_3905d871Address:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 12
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24 = mem[_23]
            if mem[_23]:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * bonusMultiplier) - (poolInfo[idx].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[idx].field_512 * bonusMultiplier):
                    revert with 0, 17
                if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _24:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _24):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _24
                    else:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _24:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _24):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _24
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args dev_fundAddress, 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_3905d871Address:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _24:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _24):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _24
                    else:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _24:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _24):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _24
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setRewardPerSecond(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not startTime:
        revert with 0, 'not initilized yet'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 12
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _30 = mem[_29]
            if mem[_29]:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * bonusMultiplier) - (poolInfo[idx].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[idx].field_512 * bonusMultiplier):
                    revert with 0, 17
                if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _30:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _30):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _30
                    else:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _30:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _30):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _30
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args dev_fundAddress, 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_3905d871Address:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _30:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _30):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _30
                    else:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _30:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _30):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _30
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardPerSecond = arg1
}

function deposit(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    if block.timestamp > poolInfo[arg1].field_512:
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * bonusMultiplier) - (poolInfo[arg1].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[arg1].field_512 * bonusMultiplier):
                revert with 0, 17
            if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if not dev_fundAddress:
                if not sub_3905d871Address:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                        revert with 0, 17
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
            else:
                if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args dev_fundAddress, 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_3905d871Address:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'you don't have enough balance in your wallet.'
    if userInfo[arg1][address(arg3)].field_0:
        if userInfo[arg1][address(arg3)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg3)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg3)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg3)].field_256:
            require ext_code.size(fundAddress)
            call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args rewardTokenAddress, address(arg3), (userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg3)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(poolInfo[arg1].field_0)
        call poolInfo[arg1].field_0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 > arg2:
            revert with 0, ' income value should be smaller than argument value. '
        if userInfo[arg1][address(arg3)].field_0 > !0:
            revert with 0, 17
    if userInfo[arg1][address(arg3)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg3)].field_0:
        revert with 0, 17
    userInfo[arg1][address(arg3)].field_256 = userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 / 10^12
    if not userInfo[arg1][address(arg3)].field_1024:
        userInfo[arg1][address(arg3)].field_1024 = block.timestamp
    emit Deposit(0, msg.sender, arg1);
    stor1 = 1
}

function addPool(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not uint8(stor11.field_0):
        revert with 0, 'rewards have not yet begun'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 12
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'duplicated pool'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 12
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _131 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _132 = mem[_131]
                if mem[_131]:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * bonusMultiplier) - (poolInfo[idx].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[idx].field_512 * bonusMultiplier):
                        revert with 0, 17
                    if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if not dev_fundAddress:
                        if not sub_3905d871Address:
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args address(stor11.field_0), (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _132:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _132):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _132
                        else:
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _132:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _132):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _132
                    else:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args dev_fundAddress, 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not sub_3905d871Address:
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _132:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _132):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _132
                        else:
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _132:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _132):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _132
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTime:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTime
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = 14 * 10^18
    poolInfo[poolInfo.length].field_1280 = 600
    emit 0x20b669aa: poolInfo.length, arg1, address(arg2), totalAllocPoint
}

function setPool(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg5 == arg5
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg3 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid harvest interval'
    if not uint8(stor11.field_0):
        revert with 0, 'rewards have not yet begun'
    if arg4 > 100:
        revert with 0, 'too much'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 12
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _54 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _55 = mem[_54]
                if mem[_54]:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * bonusMultiplier) - (poolInfo[idx].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[idx].field_512 * bonusMultiplier):
                        revert with 0, 17
                    if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if not dev_fundAddress:
                        if not sub_3905d871Address:
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args address(stor11.field_0), (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _55:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _55):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _55
                        else:
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _55:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _55):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _55
                    else:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args dev_fundAddress, 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not sub_3905d871Address:
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _55:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _55):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _55
                        else:
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _55:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _55):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _55
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1280 = arg3
    if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_1024 = 10^18 * arg4
    if poolInfo[arg1].field_256 != arg2:
        if totalAllocPoint < poolInfo[arg1].field_256:
            revert with 0, 17
        if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
            revert with 0, 17
        totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    emit PoolSet(arg1, arg2, arg3, arg4);
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw not good'
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * bonusMultiplier) - (poolInfo[arg1].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[arg1].field_512 * bonusMultiplier):
                revert with 0, 17
            if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if not dev_fundAddress:
                if not sub_3905d871Address:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                        revert with 0, 17
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
            else:
                if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                    revert with 0, 17
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0x5c6b16c1 with:
                     gas gas_remaining wei
                    args dev_fundAddress, 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_3905d871Address:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
        revert with 0, 17
    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
        require ext_code.size(fundAddress)
        call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args rewardTokenAddress, msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if not userInfo[arg1][msg.sender].field_1536:
            if block.timestamp < userInfo[arg1][msg.sender].field_1024:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_1280 = block.timestamp - userInfo[arg1][msg.sender].field_1024
        else:
            if block.timestamp < userInfo[arg1][msg.sender].field_1536:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_1280 = block.timestamp - userInfo[arg1][msg.sender].field_1536
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if userInfo[arg1][msg.sender].field_1280 < 24 * 3600:
        if 0 >= poolInfo[arg1].field_1024:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if arg2 < 0:
                revert with 0, 17
            if arg2 < arg2:
                revert with 0, 17
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_0c0dc382Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
        else:
            if poolInfo[arg1].field_1024 < 0:
                revert with 0, 17
            if arg2 and poolInfo[arg1].field_1024 / 10^18 > -1 / arg2:
                revert with 0, 17
            if arg2 < arg2 * poolInfo[arg1].field_1024 / 10^18 / 100:
                revert with 0, 17
            if arg2 < arg2 - (arg2 * poolInfo[arg1].field_1024 / 10^18 / 100):
                revert with 0, 17
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_0c0dc382Address, arg2 * poolInfo[arg1].field_1024 / 10^18 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 - (arg2 * poolInfo[arg1].field_1024 / 10^18 / 100)
    else:
        if userInfo[arg1][msg.sender].field_1280 / 24 * 3600 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * userInfo[arg1][msg.sender].field_1280 / 24 * 3600 >= poolInfo[arg1].field_1024:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if arg2 < 0:
                revert with 0, 17
            if arg2 < arg2:
                revert with 0, 17
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_0c0dc382Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
        else:
            if poolInfo[arg1].field_1024 < 10^18 * userInfo[arg1][msg.sender].field_1280 / 24 * 3600:
                revert with 0, 17
            if arg2 and poolInfo[arg1].field_1024 - (10^18 * userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 > -1 / arg2:
                revert with 0, 17
            if arg2 < arg2 * poolInfo[arg1].field_1024 - (10^18 * userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100:
                revert with 0, 17
            if arg2 < arg2 - (arg2 * poolInfo[arg1].field_1024 - (10^18 * userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100):
                revert with 0, 17
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_0c0dc382Address, arg2 * poolInfo[arg1].field_1024 - (10^18 * userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 - (arg2 * poolInfo[arg1].field_1024 - (10^18 * userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
        revert with 0, 17
    userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
    userInfo[arg1][msg.sender].field_768 = block.timestamp
    emit Withdraw(arg2, block.timestamp, msg.sender, arg1);
    stor1 = 1
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
        if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
            revert with 0, 'pool does not exist'
        mem[0] = 12
        if block.timestamp > poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0)
            staticcall poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _28 = mem[_27]
            if mem[_27]:
                if block.timestamp < poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 and bonusMultiplier > -1 / block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                    revert with 0, 17
                if (block.timestamp * bonusMultiplier) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier) and rewardPerSecond > -1 / (block.timestamp * bonusMultiplier) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier):
                    revert with 0, 17
                if (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond) and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _28:
                            revert with 0, 18
                        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !(10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / _28):
                            revert with 0, 17
                        poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / _28
                    else:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _28:
                            revert with 0, 18
                        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28):
                            revert with 0, 17
                        poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28
                else:
                    if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args dev_fundAddress, 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_3905d871Address:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _28:
                            revert with 0, 18
                        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28):
                            revert with 0, 17
                        poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28
                    else:
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = fundAddress
                        mem[mem[64] + 36] = ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args address(stor11.field_0), ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not _28:
                            revert with 0, 18
                        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28):
                            revert with 0, 17
                        poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * bonusMultiplier * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28
            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
