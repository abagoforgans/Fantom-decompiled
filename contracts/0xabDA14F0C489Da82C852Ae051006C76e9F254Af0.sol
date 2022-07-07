contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1)
#
const sub_fbbb0df3(?) = (336 * 24 * 3600)

const MAXIMUM_HARVEST_INTERVAL = (24 * 3600)


address owner;
uint256 stor1;
address rewardTokenAddress;
address dev_fundAddress;
address sub_3905d871Address;
uint256 rewardPerSecond;
uint256 BONUS_MULTIPLIER;
address fundAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
mapping of uint8 stor12;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020071;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020072;

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

function sub_3905d871(?) payable {
    return sub_3905d871Address
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

function dev_fund() payable {
    return dev_fundAddress
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 and BONUS_MULTIPLIER > -1 / arg2 - arg1:
        revert with 0, 17
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if startTime >= block.timestamp:
        revert with 0, 'already started'
    startTime = arg1
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

function sub_c0aa2852(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if startTime:
        revert with 0, 'only one time.'
    if not address(arg1):
        revert with 0, 'reward token address error'
    rewardTokenAddress = address(arg1)
    rewardPerSecond = arg3
    startTime = arg2
    fundAddress = address(arg4)
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
    if poolInfo[arg1].field_256 != 0:
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
                if block.timestamp - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    revert with 0, 17
                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_3905d871Address:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.timestamp
}

function harvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, 'cannot withdraw to zero address'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if 0 == poolInfo[arg1].field_256:
        if block.timestamp < userInfo[arg1][msg.sender].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'need to wait for next harvest time'
    else:
        if block.timestamp <= poolInfo[arg1].field_512:
            if block.timestamp < userInfo[arg1][msg.sender].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'need to wait for next harvest time'
        else:
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
                if block.timestamp - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    revert with 0, 17
                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_3905d871Address:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.timestamp
            if block.timestamp < userInfo[arg1][msg.sender].field_512:
                revert with 0, 'need to wait for next harvest time'
    ('ge', 'timestamp', ('field', 512, ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 9))))))
    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
        revert with 0, 'no pending reward '
    userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
    if block.timestamp > !poolInfo[arg1].field_1024:
        revert with 0, 17
    userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
    require ext_code.size(fundAddress)
    call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args rewardTokenAddress, address(arg2), (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbf994279: (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256, arg2, msg.sender, arg1
    stor1 = 1
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 8
        if poolInfo[idx].field_256 != 0:
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
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
                    if not dev_fundAddress:
                        if not sub_3905d871Address:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _28:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _28):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _28
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _28:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _28):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _28
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not sub_3905d871Address:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _28:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _28):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _28
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _28:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _28):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _28
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
    idx = 0
    while idx < poolInfo.length:
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 8
        if poolInfo[idx].field_256 != 0:
            if block.timestamp > poolInfo[idx].field_512:
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
                _32 = mem[_31]
                if mem[_31]:
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
                    if not dev_fundAddress:
                        if not sub_3905d871Address:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _32:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _32):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _32
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _32:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _32):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _32
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not sub_3905d871Address:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _32:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _32):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _32
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _32:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _32):
                                revert with 0, 17
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _32
                poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardPerSecond = arg1
}

function setPool(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg3 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid harvest interval'
    if arg4 > 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid lockup interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            if not startTime:
                revert with 0, 'not initilized yet'
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 8
            if poolInfo[idx].field_256 != 0:
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
                    _45 = mem[_44]
                    if mem[_44]:
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
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not _45:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _45):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _45
                            else:
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _45:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _45):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _45
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _45:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _45):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _45
                            else:
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _45:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _45):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _45
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
    poolInfo[arg1].field_1280 = arg4
}

function addPool(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    mem[0] = arg2
    mem[32] = 12
    if stor12[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid harvest interval'
    if arg4 > 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid lockup interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            if not startTime:
                revert with 0, 'not initilized yet'
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 8
            if poolInfo[idx].field_256 != 0:
                if block.timestamp > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _70 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _87 = mem[_70]
                    if mem[_70]:
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
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not _87:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _87):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _87
                            else:
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _87:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _87):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _87
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not sub_3905d871Address:
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _87:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _87):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _87
                            else:
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _87:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _87):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _87
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
    storF3F7[stor8.length] = arg1
    if block.timestamp > startTime:
        storF3F7[stor8.length] = block.timestamp
    else:
        storF3F7[stor8.length] = startTime
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length] = arg3
    storF3F7[stor8.length] = arg4
    stor12[address(arg2)] = 1
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
        if not startTime:
            revert with 0, 'not initilized yet'
        if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 8
        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 != 0:
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
                    if block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 and BONUS_MULTIPLIER > -1 / block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        revert with 0, 17
                    if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER) and rewardPerSecond > -1 / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER):
                        revert with 0, 17
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond) and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if not dev_fundAddress:
                        if not sub_3905d871Address:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _28:
                                revert with 0, 18
                            if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / _28):
                                revert with 0, 17
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / _28
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _28:
                                revert with 0, 18
                            if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28):
                                revert with 0, 17
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not sub_3905d871Address:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _28:
                                revert with 0, 18
                            if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28):
                                revert with 0, 17
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28
                        else:
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _28:
                                revert with 0, 18
                            if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28):
                                revert with 0, 17
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _28
                poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg2 <= 0:
        revert with 0, 'deposit should be more than 0'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_256 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot deposit this token for now'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[100] = this.address
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == poolInfo[arg1].field_256:
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
        mem[ceil32(return_data.size) + 392] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if block.timestamp <= poolInfo[arg1].field_512:
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg2
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[ceil32(return_data.size) + 392] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if ext_call.return_data[0]:
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
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_3905d871Address:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.timestamp
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = this.address
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
    if block.timestamp > !poolInfo[arg1].field_1024:
        revert with 0, 17
    userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
    userInfo[arg1][msg.sender].field_768 = block.timestamp
    if userInfo[arg1][msg.sender].field_0 > !0:
        revert with 0, 17
    if 0 and poolInfo[arg1].field_768 > -1 / 0:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_256 >= 0 and (ext_call.return_data[0] * poolInfo[arg1].field_768) - (ext_call.return_data[0] * poolInfo[arg1].field_768) / 10^12 > -userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_256 < 0 and (ext_call.return_data[0] * poolInfo[arg1].field_768) - (ext_call.return_data[0] * poolInfo[arg1].field_768) / 10^12 < -userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    userInfo[arg1][msg.sender].field_256 += (ext_call.return_data[0] * poolInfo[arg1].field_768) - (ext_call.return_data[0] * poolInfo[arg1].field_768) / 10^12
    emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    if arg2 <= 0:
        revert with 0, 'withdraw amount should be > 0'
    if userInfo[arg1][msg.sender].field_768 > !poolInfo[arg1].field_1280:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_768 + poolInfo[arg1].field_1280 > block.timestamp:
        revert with 0, 'still in withdraw lockup time'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[100] = this.address
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == poolInfo[arg1].field_256:
        if arg2 and poolInfo[arg1].field_768 > -1 / arg2:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_256 < (arg2 * poolInfo[arg1].field_768 / 10^12) - 0x8000000000000000000000000000000000000000000000000000000000000000 and arg2 * poolInfo[arg1].field_768 / 10^12 >= 0:
            revert with 0, 17
        if arg2 * poolInfo[arg1].field_768 / 10^12 < 0 and userInfo[arg1][msg.sender].field_256 > (arg2 * poolInfo[arg1].field_768 / 10^12) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 -= arg2 * poolInfo[arg1].field_768 / 10^12
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if block.timestamp <= poolInfo[arg1].field_512:
            if arg2 and poolInfo[arg1].field_768 > -1 / arg2:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 < (arg2 * poolInfo[arg1].field_768 / 10^12) - 0x8000000000000000000000000000000000000000000000000000000000000000 and arg2 * poolInfo[arg1].field_768 / 10^12 >= 0:
                revert with 0, 17
            if arg2 * poolInfo[arg1].field_768 / 10^12 < 0 and userInfo[arg1][msg.sender].field_256 > (arg2 * poolInfo[arg1].field_768 / 10^12) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 -= arg2 * poolInfo[arg1].field_768 / 10^12
            if userInfo[arg1][msg.sender].field_0 < arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 -= arg2
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = arg2
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, 0
            mem[ceil32(return_data.size) + 328] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if ext_call.return_data[0]:
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
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                        revert with 0, 17
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0x5c6b16c1 with:
                         gas gas_remaining wei
                        args dev_fundAddress, 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not sub_3905d871Address:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 8 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.timestamp
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 and poolInfo[arg1].field_768 > -1 / arg2:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 < (arg2 * poolInfo[arg1].field_768 / 10^12) - 0x8000000000000000000000000000000000000000000000000000000000000000 and arg2 * poolInfo[arg1].field_768 / 10^12 >= 0:
                revert with 0, 17
            if arg2 * poolInfo[arg1].field_768 / 10^12 < 0 and userInfo[arg1][msg.sender].field_256 > (arg2 * poolInfo[arg1].field_768 / 10^12) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 -= arg2 * poolInfo[arg1].field_768 / 10^12
            if userInfo[arg1][msg.sender].field_0 < arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 -= arg2
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if arg2 != 0:
        revert with 0, 1
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
