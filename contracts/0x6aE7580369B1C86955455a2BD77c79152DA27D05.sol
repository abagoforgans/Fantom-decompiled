contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2, address arg3, address arg4)
#
const sub_86782813(?) = (720 * 24 * 3600)

const sub_fbbb0df3(?) = (336 * 24 * 3600)

const MAXIMUM_HARVEST_INTERVAL = (24 * 3600)


uint8 stor0; offset 160
address owner;
uint256 stor1;
address fundAddress;
address sub_9ecc3bacAddress;
address rewardTokenAddress;
address dev_fundAddress;
address sub_3905d871Address;
mapping of address referrals;
mapping of uint256 referralsCount;
mapping of uint256 sub_85300e73;
array of struct poolInfo;
mapping of uint8 stor11;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
uint256 endTime;
uint256 rewardPerSecond;

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
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
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

function paused() payable {
    return bool(stor0)
}

function referralsCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referralsCount[arg1]
}

function startTime() payable {
    return startTime
}

function sub_85300e73(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_85300e73[arg1]
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
           userInfo[arg1][arg2].field_1536
}

function referrals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrals[arg1]
}

function sub_9ecc3bac(?) payable {
    return sub_9ecc3bacAddress
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
    return bool(stor11[arg1])
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

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if dev_fundAddress != msg.sender:
            revert with 0, 'CoffinMakerV2: only from dev'
    dev_fundAddress = arg1
    emit 0x1a728d77: arg1
}

function setMarketingFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if arg1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMakerV2: only from marketing_fund'
    sub_3905d871Address = arg1
    emit 0xb5954fe3: arg1
}

function setProfitSharingFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if sub_9ecc3bacAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMakerV2: only from profit_sharing_fund'
    sub_9ecc3bacAddress = arg1
    emit 0x445a4a80: arg1
}

function sub_f44a2ac0(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    userInfo[arg1][address(arg2)].field_1024 = arg3
    userInfo[arg1][address(arg2)].field_1280 = arg4
    emit 0x2b80c9e7: arg1, address(arg2), arg3, arg4
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if startTime <= block.timestamp:
        revert with 0, 'already started'
    if arg1 <= block.timestamp:
        revert with 0, 'start time should be future'
    startTime = arg1
}

function sub_6294d5c7(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if 0 == startTime:
        revert with 0, 'not initilized yet'
    if block.timestamp >= userInfo[arg1][address(arg2)].field_512:
        return 0
    if userInfo[arg1][address(arg2)].field_512 < block.timestamp:
        revert with 0, 17
    return (userInfo[arg1][address(arg2)].field_512 - block.timestamp)
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

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if 0 == startTime:
        revert with 0, 'not initilized yet'
    if block.timestamp < userInfo[arg1][address(arg2)].field_512:
        if userInfo[arg1][address(arg2)].field_512 < block.timestamp:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 - block.timestamp:
            return 0
    return 1
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

function sub_9f6c5426(?) payable {
    require calldata.size - 4 >= 64
    if arg2 < 24 * 3600:
        if 0 >= arg1:
            return 0
        if arg1 < 0:
            revert with 0, 17
        return arg1
    if arg2 / 24 * 3600 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg2 / 24 * 3600 >= arg1:
        return 0
    if arg1 < 10^18 * arg2 / 24 * 3600:
        revert with 0, 17
    return (arg1 - (10^18 * arg2 / 24 * 3600))
}

function sub_ab7b82a4(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if 0 == startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if userInfo[arg1][address(arg2)].field_768 > !poolInfo[arg1].field_1280:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1280 <= block.timestamp:
        return 0
    if userInfo[arg1][address(arg2)].field_768 > !poolInfo[arg1].field_1280:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1280 < block.timestamp:
        revert with 0, 17
    return (userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1280 - block.timestamp)
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
    if userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1280 > block.timestamp:
        if userInfo[arg1][address(arg2)].field_768 > !poolInfo[arg1].field_1280:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1280 < block.timestamp:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1280 - block.timestamp:
            return 0
    return 1
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
    startTime = block.timestamp
    if arg2:
        if arg2 <= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CoffinMakerV2: The start time must be in the future. '
        if arg2 < block.timestamp:
            revert with 0, 17
        if arg2 - block.timestamp > 720 * 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMakerV2: invalid starting time '
        startTime = arg2
    rewardPerSecond = arg3
    if not arg3:
        rewardPerSecond = 10^18
    fundAddress = address(arg4)
}

function sub_7e668b42(?) payable {
    require calldata.size - 4 >= 96
    if arg2 < 24 * 3600:
        if 0 >= arg1:
            if arg3 and 0 > -1 / arg3:
                revert with 0, 17
            if arg3 < 0:
                revert with 0, 17
            return 0, arg3
        if arg1 < 0:
            revert with 0, 17
        if arg3 and arg1 / 10^18 > -1 / arg3:
            revert with 0, 17
        if arg3 < arg3 * arg1 / 10^18 / 100:
            revert with 0, 17
        return arg3 * arg1 / 10^18 / 100, arg3 - (arg3 * arg1 / 10^18 / 100)
    if arg2 / 24 * 3600 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * arg2 / 24 * 3600 >= arg1:
        if arg3 and 0 > -1 / arg3:
            revert with 0, 17
        if arg3 < 0:
            revert with 0, 17
        return 0, arg3
    if arg1 < 10^18 * arg2 / 24 * 3600:
        revert with 0, 17
    if arg3 and arg1 - (10^18 * arg2 / 24 * 3600) / 10^18 > -1 / arg3:
        revert with 0, 17
    if arg3 < arg3 * arg1 - (10^18 * arg2 / 24 * 3600) / 10^18 / 100:
        revert with 0, 17
    return arg3 * arg1 - (10^18 * arg2 / 24 * 3600) / 10^18 / 100, arg3 - (arg3 * arg1 - (10^18 * arg2 / 24 * 3600) / 10^18 / 100)
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    userInfo[arg1][msg.sender].field_512 = 0
    userInfo[arg1][msg.sender].field_768 = 0
    userInfo[arg1][msg.sender].field_1024 = 0
    userInfo[arg1][msg.sender].field_1280 = 0
    userInfo[arg1][msg.sender].field_1536 = 0
    if not sub_9ecc3bacAddress:
        require ext_code.size(poolInfo[arg1].field_0)
        call poolInfo[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][msg.sender].field_0
    else:
        if block.timestamp < userInfo[arg1][msg.sender].field_1280:
            revert with 0, 17
        if block.timestamp - userInfo[arg1][msg.sender].field_1280 < 24 * 3600:
            if 0 >= poolInfo[arg1].field_1536:
                if userInfo[arg1][msg.sender].field_0 and 0 > -1 / userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_0 < 0:
                    revert with 0, 17
                require ext_code.size(poolInfo[arg1].field_0)
                call poolInfo[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[arg1][msg.sender].field_0
            else:
                if poolInfo[arg1].field_1536 < 0:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_1536 / 10^18 > -1 / userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1536 / 10^18 / 100:
                    revert with 0, 17
                require ext_code.size(poolInfo[arg1].field_0)
                if not userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1536 / 10^18 / 100:
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[arg1][msg.sender].field_0
                else:
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_9ecc3bacAddress, userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1536 / 10^18 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(poolInfo[arg1].field_0)
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[arg1][msg.sender].field_0 - (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1536 / 10^18 / 100)
        else:
            if block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600 >= poolInfo[arg1].field_1536:
                if userInfo[arg1][msg.sender].field_0 and 0 > -1 / userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_0 < 0:
                    revert with 0, 17
                require ext_code.size(poolInfo[arg1].field_0)
                call poolInfo[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[arg1][msg.sender].field_0
            else:
                if poolInfo[arg1].field_1536 < 10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 > -1 / userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100:
                    revert with 0, 17
                require ext_code.size(poolInfo[arg1].field_0)
                if not userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100:
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[arg1][msg.sender].field_0
                else:
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_9ecc3bacAddress, userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(poolInfo[arg1].field_0)
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[arg1][msg.sender].field_0 - (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if not poolInfo[arg1].field_256:
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280,
               poolInfo[arg1].field_1536
    if block.timestamp <= poolInfo[arg1].field_512:
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               poolInfo[arg1].field_512,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280,
               poolInfo[arg1].field_1536
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
        poolInfo[arg1].field_512 = poolInfo[arg1].field_512
        poolInfo[arg1].field_768 = poolInfo[arg1].field_768
        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
        poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               block.timestamp,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280,
               poolInfo[arg1].field_1536
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if not dev_fundAddress:
        if not sub_3905d871Address:
            if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                revert with 0, 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0x5c6b16c1 with:
                 gas gas_remaining wei
                args fundAddress, (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
            poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
            poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
            return poolInfo[arg1].field_0, 
                   poolInfo[arg1].field_256,
                   block.timestamp,
                   poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]),
                   poolInfo[arg1].field_1024,
                   poolInfo[arg1].field_1280,
                   poolInfo[arg1].field_1536
        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
            revert with 0, 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0x5c6b16c1 with:
             gas gas_remaining wei
            args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
            revert with 0, 17
        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
            revert with 0, 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0x5c6b16c1 with:
             gas gas_remaining wei
            args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
            revert with 0, 17
        if arg1 >= poolInfo.length:
            revert with 0, 50
        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
        poolInfo[arg1].field_512 = block.timestamp
        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
        poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               block.timestamp,
               poolInfo[arg1].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]),
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280,
               poolInfo[arg1].field_1536
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
        revert with 0, 17
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0x5c6b16c1 with:
         gas gas_remaining wei
        args dev_fundAddress, 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_3905d871Address:
        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
            revert with 0, 17
        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
            revert with 0, 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0x5c6b16c1 with:
             gas gas_remaining wei
            args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
            revert with 0, 17
        if arg1 >= poolInfo.length:
            revert with 0, 50
        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
        poolInfo[arg1].field_512 = block.timestamp
        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
        poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               block.timestamp,
               poolInfo[arg1].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]),
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280,
               poolInfo[arg1].field_1536
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
        revert with 0, 17
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0x5c6b16c1 with:
         gas gas_remaining wei
        args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
        revert with 0, 17
    if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
        revert with 0, 17
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0x5c6b16c1 with:
         gas gas_remaining wei
        args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
        revert with 0, 17
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_0 = poolInfo[arg1].field_0
    poolInfo[arg1].field_256 = poolInfo[arg1].field_256
    poolInfo[arg1].field_512 = block.timestamp
    poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
    poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
    poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           block.timestamp,
           poolInfo[arg1].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]),
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        _72 = mem[64]
        mem[64] = mem[64] + 224
        mem[_72] = 0
        mem[_72 + 32] = 0
        mem[_72 + 64] = 0
        mem[_72 + 96] = 0
        mem[_72 + 128] = 0
        mem[_72 + 160] = 0
        mem[_72 + 192] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 10
        _75 = mem[64]
        mem[64] = mem[64] + 224
        mem[_75] = poolInfo[idx].field_0
        mem[_75 + 32] = poolInfo[idx].field_256
        mem[_75 + 64] = poolInfo[idx].field_512
        mem[_75 + 96] = poolInfo[idx].field_768
        mem[_75 + 128] = poolInfo[idx].field_1024
        mem[_75 + 160] = poolInfo[idx].field_1280
        mem[_75 + 192] = poolInfo[idx].field_1536
        if poolInfo[idx].field_256:
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _82 = mem[_81]
                if not mem[_81]:
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 10
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = poolInfo[idx].field_512
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                    poolInfo[idx].field_1536 = poolInfo[idx].field_1536
                    mem[_75 + 64] = block.timestamp
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if not dev_fundAddress:
                        if not sub_3905d871Address:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _82:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _82):
                                revert with 0, 17
                            mem[_75 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _82)
                            mem[_75 + 64] = block.timestamp
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _82
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _82:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82):
                                revert with 0, 17
                            mem[_75 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82)
                            mem[_75 + 64] = block.timestamp
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82
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
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _82:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82):
                                revert with 0, 17
                            mem[_75 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82)
                            mem[_75 + 64] = block.timestamp
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _82:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82):
                                revert with 0, 17
                            mem[_75 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82)
                            mem[_75 + 64] = block.timestamp
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _82
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                    poolInfo[idx].field_1536 = poolInfo[idx].field_1536
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
        _78 = mem[64]
        mem[64] = mem[64] + 224
        mem[_78] = 0
        mem[_78 + 32] = 0
        mem[_78 + 64] = 0
        mem[_78 + 96] = 0
        mem[_78 + 128] = 0
        mem[_78 + 160] = 0
        mem[_78 + 192] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if idx >= poolInfo.length:
            revert with 0, 50
        mem[0] = 10
        _81 = mem[64]
        mem[64] = mem[64] + 224
        mem[_81] = poolInfo[idx].field_0
        mem[_81 + 32] = poolInfo[idx].field_256
        mem[_81 + 64] = poolInfo[idx].field_512
        mem[_81 + 96] = poolInfo[idx].field_768
        mem[_81 + 128] = poolInfo[idx].field_1024
        mem[_81 + 160] = poolInfo[idx].field_1280
        mem[_81 + 192] = poolInfo[idx].field_1536
        if poolInfo[idx].field_256:
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _88 = mem[_87]
                if not mem[_87]:
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 10
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = poolInfo[idx].field_512
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                    poolInfo[idx].field_1536 = poolInfo[idx].field_1536
                    mem[_81 + 64] = block.timestamp
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if not dev_fundAddress:
                        if not sub_3905d871Address:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _88:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _88):
                                revert with 0, 17
                            mem[_81 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _88)
                            mem[_81 + 64] = block.timestamp
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _88
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _88:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88):
                                revert with 0, 17
                            mem[_81 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88)
                            mem[_81 + 64] = block.timestamp
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88
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
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _88:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88):
                                revert with 0, 17
                            mem[_81 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88)
                            mem[_81 + 64] = block.timestamp
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _88:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88):
                                revert with 0, 17
                            mem[_81 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88)
                            mem[_81 + 64] = block.timestamp
                            if idx >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[idx].field_0 = poolInfo[idx].field_0
                            poolInfo[idx].field_256 = poolInfo[idx].field_256
                            poolInfo[idx].field_512 = block.timestamp
                            poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _88
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                    poolInfo[idx].field_1536 = poolInfo[idx].field_1536
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardPerSecond = arg1
}

function withdraw(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if not startTime:
        revert with 0, 'not initilized yet'
    if not arg3:
        revert with 0, 'cannot withdraw to zero address'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CoffinMakerV2: withdraw request greater than staked amount'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_256:
        if block.timestamp > poolInfo[arg1].field_512:
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
                poolInfo[arg1].field_512 = poolInfo[arg1].field_512
                poolInfo[arg1].field_768 = poolInfo[arg1].field_768
            else:
                if block.timestamp < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[arg1].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                    else:
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        if arg1 >= poolInfo.length:
                            revert with 0, 50
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
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
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        if arg1 >= poolInfo.length:
                            revert with 0, 50
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                    else:
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        if arg1 >= poolInfo.length:
                            revert with 0, 50
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
            poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
            poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
            poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
    if arg2 <= 0:
        revert with 0, 'CoffinMakerV2: withdraw amount should be more than 0'
    if userInfo[arg1][msg.sender].field_768 > !poolInfo[arg1].field_1280:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_768 + poolInfo[arg1].field_1280 > block.timestamp:
        revert with 0, 'CoffinMakerV2: still in withdraw lockup time'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
    userInfo[arg1][msg.sender].field_1536 = block.timestamp
    if not sub_9ecc3bacAddress:
        require ext_code.size(poolInfo[arg1].field_0)
        call poolInfo[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
    else:
        if block.timestamp < userInfo[arg1][msg.sender].field_1280:
            revert with 0, 17
        if block.timestamp - userInfo[arg1][msg.sender].field_1280 < 24 * 3600:
            if 0 >= poolInfo[arg1].field_1536:
                if arg2 and 0 > -1 / arg2:
                    revert with 0, 17
                if arg2 < 0:
                    revert with 0, 17
                require ext_code.size(poolInfo[arg1].field_0)
                call poolInfo[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), arg2
            else:
                if poolInfo[arg1].field_1536 < 0:
                    revert with 0, 17
                if arg2 and poolInfo[arg1].field_1536 / 10^18 > -1 / arg2:
                    revert with 0, 17
                if arg2 < arg2 * poolInfo[arg1].field_1536 / 10^18 / 100:
                    revert with 0, 17
                require ext_code.size(poolInfo[arg1].field_0)
                if not arg2 * poolInfo[arg1].field_1536 / 10^18 / 100:
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg2
                else:
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_9ecc3bacAddress, arg2 * poolInfo[arg1].field_1536 / 10^18 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(poolInfo[arg1].field_0)
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg2 - (arg2 * poolInfo[arg1].field_1536 / 10^18 / 100)
        else:
            if block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600 >= poolInfo[arg1].field_1536:
                if arg2 and 0 > -1 / arg2:
                    revert with 0, 17
                if arg2 < 0:
                    revert with 0, 17
                require ext_code.size(poolInfo[arg1].field_0)
                call poolInfo[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), arg2
            else:
                if poolInfo[arg1].field_1536 < 10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600:
                    revert with 0, 17
                if arg2 and poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 > -1 / arg2:
                    revert with 0, 17
                if arg2 < arg2 * poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100:
                    revert with 0, 17
                require ext_code.size(poolInfo[arg1].field_0)
                if not arg2 * poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100:
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg2
                else:
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_9ecc3bacAddress, arg2 * poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(poolInfo[arg1].field_0)
                    call poolInfo[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg2 - (arg2 * poolInfo[arg1].field_1536 - (10^18 * block.timestamp - userInfo[arg1][msg.sender].field_1280 / 24 * 3600) / 10^18 / 100)
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
    if arg2 != 0:
        revert with 0, 1
    emit 0xc1fc7d36: arg2, arg3, msg.sender, arg1
    stor1 = 1
}

function sub_802d6457(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    require arg6 == bool(arg6)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg3 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMakerV2: invalid harvest interval'
    if arg4 > 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMakerV2: invalid lockup interval'
    if arg5 > 100:
        revert with 0, 'too much'
    if arg6:
        idx = 0
        while idx < poolInfo.length:
            _100 = mem[64]
            mem[64] = mem[64] + 224
            mem[_100] = 0
            mem[_100 + 32] = 0
            mem[_100 + 64] = 0
            mem[_100 + 96] = 0
            mem[_100 + 128] = 0
            mem[_100 + 160] = 0
            mem[_100 + 192] = 0
            if not startTime:
                revert with 0, 'not initilized yet'
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 10
            _104 = mem[64]
            mem[64] = mem[64] + 224
            mem[_104] = poolInfo[idx].field_0
            mem[_104 + 32] = poolInfo[idx].field_256
            mem[_104 + 64] = poolInfo[idx].field_512
            mem[_104 + 96] = poolInfo[idx].field_768
            mem[_104 + 128] = poolInfo[idx].field_1024
            mem[_104 + 160] = poolInfo[idx].field_1280
            mem[_104 + 192] = poolInfo[idx].field_1536
            if poolInfo[idx].field_256:
                if block.timestamp > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _113 = mem[_110]
                    if not mem[_110]:
                        if idx >= poolInfo.length:
                            revert with 0, 50
                        mem[0] = 10
                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                        poolInfo[idx].field_512 = poolInfo[idx].field_512
                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                        poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                        poolInfo[idx].field_1536 = poolInfo[idx].field_1536
                        mem[_104 + 64] = block.timestamp
                    else:
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not _113:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _113):
                                    revert with 0, 17
                                mem[_104 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _113)
                                mem[_104 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _113
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _113:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113):
                                    revert with 0, 17
                                mem[_104 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113)
                                mem[_104 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113
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
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _113:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113):
                                    revert with 0, 17
                                mem[_104 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113)
                                mem[_104 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _113:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113):
                                    revert with 0, 17
                                mem[_104 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113)
                                mem[_104 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _113
                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                        poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                        poolInfo[idx].field_1536 = poolInfo[idx].field_1536
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
    if arg5 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_1536 = 10^18 * arg5
    emit 0x81812e4c: arg1, arg2, arg3, arg4, arg5
}

function addPool(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    mem[0] = arg2
    mem[32] = 11
    if stor11[address(arg2)]:
        revert with 0, 'CoffinMakerV2: duplicated'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'CoffinMakerV2: duplicated'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not startTime:
        revert with 0, 'not initilized yet'
    if not arg5:
        if arg3 > 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMakerV2: invalid harvest interval'
        if arg4 > 336 * 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMakerV2: invalid lockup interval'
    else:
        idx = 0
        while idx < poolInfo.length:
            _252 = mem[64]
            mem[64] = mem[64] + 224
            mem[_252] = 0
            mem[_252 + 32] = 0
            mem[_252 + 64] = 0
            mem[_252 + 96] = 0
            mem[_252 + 128] = 0
            mem[_252 + 160] = 0
            mem[_252 + 192] = 0
            if not startTime:
                revert with 0, 'not initilized yet'
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 10
            _259 = mem[64]
            mem[64] = mem[64] + 224
            mem[_259] = poolInfo[idx].field_0
            mem[_259 + 32] = poolInfo[idx].field_256
            mem[_259 + 64] = poolInfo[idx].field_512
            mem[_259 + 96] = poolInfo[idx].field_768
            mem[_259 + 128] = poolInfo[idx].field_1024
            mem[_259 + 160] = poolInfo[idx].field_1280
            mem[_259 + 192] = poolInfo[idx].field_1536
            if poolInfo[idx].field_256:
                if block.timestamp > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _269 = mem[_268]
                    if not mem[_268]:
                        if idx >= poolInfo.length:
                            revert with 0, 50
                        mem[0] = 10
                        poolInfo[idx].field_0 = poolInfo[idx].field_0
                        poolInfo[idx].field_256 = poolInfo[idx].field_256
                        poolInfo[idx].field_512 = poolInfo[idx].field_512
                        poolInfo[idx].field_768 = poolInfo[idx].field_768
                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                        poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                        poolInfo[idx].field_1536 = poolInfo[idx].field_1536
                        mem[_259 + 64] = block.timestamp
                    else:
                        if block.timestamp < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if not dev_fundAddress:
                            if not sub_3905d871Address:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not _269:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _269):
                                    revert with 0, 17
                                mem[_259 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _269)
                                mem[_259 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _269
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 0:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _269:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269):
                                    revert with 0, 17
                                mem[_259 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269)
                                mem[_259 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269
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
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 0:
                                    revert with 0, 17
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _269:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269):
                                    revert with 0, 17
                                mem[_259 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269)
                                mem[_259 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269
                            else:
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) < 12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97:
                                    revert with 0, 17
                                mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = fundAddress
                                mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0x5c6b16c1 with:
                                     gas gas_remaining wei
                                    args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97):
                                    revert with 0, 17
                                if not _269:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269):
                                    revert with 0, 17
                                mem[_259 + 96] = poolInfo[idx].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269)
                                mem[_259 + 64] = block.timestamp
                                if idx >= poolInfo.length:
                                    revert with 0, 50
                                mem[0] = 10
                                poolInfo[idx].field_0 = poolInfo[idx].field_0
                                poolInfo[idx].field_256 = poolInfo[idx].field_256
                                poolInfo[idx].field_512 = block.timestamp
                                poolInfo[idx].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 97) / _269
                        poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                        poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                        poolInfo[idx].field_1536 = poolInfo[idx].field_1536
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > 24 * 3600:
            revert with 0, 'CoffinMakerV2: invalid harvest interval'
        if arg4 > 336 * 24 * 3600:
            revert with 0, 'CoffinMakerV2: invalid lockup interval'
    ('le', ('param', 'arg4'), 1209600)
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    stor11[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTime:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTime
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = arg4
    poolInfo[poolInfo.length].field_1536 = 14 * 10^18
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
        _72 = mem[64]
        mem[64] = mem[64] + 224
        mem[_72] = 0
        mem[_72 + 32] = 0
        mem[_72 + 64] = 0
        mem[_72 + 96] = 0
        mem[_72 + 128] = 0
        mem[_72 + 160] = 0
        mem[_72 + 192] = 0
        if not startTime:
            revert with 0, 'not initilized yet'
        if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 10
        _75 = mem[64]
        mem[64] = mem[64] + 224
        mem[_75] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_75 + 32] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_75 + 64] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512
        mem[_75 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
        mem[_75 + 128] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
        mem[_75 + 160] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
        mem[_75 + 192] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1536
        if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256:
            if block.timestamp > poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0)
                staticcall poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _82 = mem[_81]
                if not mem[_81]:
                    if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 10
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1536 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1536
                    mem[_75 + 64] = block.timestamp
                else:
                    if block.timestamp < poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond) and poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if not dev_fundAddress:
                        if not sub_3905d871Address:
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _82:
                                revert with 0, 18
                            if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / _82):
                                revert with 0, 17
                            mem[_75 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / _82)
                            mem[_75 + 64] = block.timestamp
                            if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / _82
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) < 0:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _82:
                                revert with 0, 18
                            if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82):
                                revert with 0, 17
                            mem[_75 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82)
                            mem[_75 + 64] = block.timestamp
                            if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82
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
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 0:
                                revert with 0, 17
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _82:
                                revert with 0, 18
                            if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82):
                                revert with 0, 17
                            mem[_75 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82)
                            mem[_75 + 64] = block.timestamp
                            if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82
                        else:
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            if ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) < 12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97:
                                revert with 0, 17
                            mem[mem[64]] = 0x5c6b16c100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = fundAddress
                            mem[mem[64] + 36] = ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0x5c6b16c1 with:
                                 gas gas_remaining wei
                                args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97):
                                revert with 0, 17
                            if not _82:
                                revert with 0, 18
                            if poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82):
                                revert with 0, 17
                            mem[_75 + 96] = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82)
                            mem[_75 + 64] = block.timestamp
                            if cd[((32 * idx) + cd[4] + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 10
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_0
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 = block.timestamp
                            poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) - (poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_256) / totalAllocPoint / 97) / _82
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1024
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1280
                    poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1536 = poolInfo[cd[((32 * idx) + cd[4] + 36)]].field_1536
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function harvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool does not exist'
    if not startTime:
        revert with 0, 'not initilized yet'
    if not arg2:
        revert with 0, 'cannot withdraw to zero address'
    if not startTime:
        revert with 0, 'not initilized yet'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if not poolInfo[arg1].field_256:
        if block.timestamp < userInfo[arg1][msg.sender].field_512:
            revert with 0, 'CoffinMakerV2: need to wait for next harvest time'
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
            revert with 0, 'CoffinMakerV2: no pending reward '
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
    else:
        if block.timestamp <= poolInfo[arg1].field_512:
            if block.timestamp < userInfo[arg1][msg.sender].field_512:
                revert with 0, 'CoffinMakerV2: need to wait for next harvest time'
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
                revert with 0, 'CoffinMakerV2: no pending reward '
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
                poolInfo[arg1].field_512 = poolInfo[arg1].field_512
                poolInfo[arg1].field_768 = poolInfo[arg1].field_768
                poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
                poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
                if block.timestamp < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 'CoffinMakerV2: need to wait for next harvest time'
                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
                    revert with 0, 'CoffinMakerV2: no pending reward '
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
            else:
                if block.timestamp < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[arg1].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if not dev_fundAddress:
                    if not sub_3905d871Address:
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
                        poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
                        if block.timestamp < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 'CoffinMakerV2: need to wait for next harvest time'
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                            revert with 0, 17
                        if userInfo[arg1][msg.sender].field_256 < 0 and (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
                            revert with 0, 'CoffinMakerV2: no pending reward '
                        userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
                        if block.timestamp > !poolInfo[arg1].field_1024:
                            revert with 0, 17
                        userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
                        require ext_code.size(fundAddress)
                        call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args rewardTokenAddress, address(arg2), ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbf994279: ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256, arg2, msg.sender, arg1
                    else:
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 0:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        if arg1 >= poolInfo.length:
                            revert with 0, 50
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
                        poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
                        if block.timestamp < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 'CoffinMakerV2: need to wait for next harvest time'
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                            revert with 0, 17
                        if userInfo[arg1][msg.sender].field_256 < 0 and (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
                            revert with 0, 'CoffinMakerV2: no pending reward '
                        userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
                        if block.timestamp > !poolInfo[arg1].field_1024:
                            revert with 0, 17
                        userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
                        require ext_code.size(fundAddress)
                        call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args rewardTokenAddress, address(arg2), ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbf994279: ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (10^12 * 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256, arg2, msg.sender, arg1
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
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 0:
                            revert with 0, 17
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        if arg1 >= poolInfo.length:
                            revert with 0, 50
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
                        poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
                        if block.timestamp < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 'CoffinMakerV2: need to wait for next harvest time'
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                            revert with 0, 17
                        if userInfo[arg1][msg.sender].field_256 < 0 and (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
                            revert with 0, 'CoffinMakerV2: no pending reward '
                        userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
                        if block.timestamp > !poolInfo[arg1].field_1024:
                            revert with 0, 17
                        userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
                        require ext_code.size(fundAddress)
                        call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args rewardTokenAddress, address(arg2), ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbf994279: ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (12 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256, arg2, msg.sender, arg1
                    else:
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97 and 8 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args sub_3905d871Address, 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint < 8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (8 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) < 12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97:
                            revert with 0, 17
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0x5c6b16c1 with:
                             gas gas_remaining wei
                            args fundAddress, ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) and 10^12 > -1 / ((block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]):
                            revert with 0, 17
                        if arg1 >= poolInfo.length:
                            revert with 0, 50
                        poolInfo[arg1].field_0 = poolInfo[arg1].field_0
                        poolInfo[arg1].field_256 = poolInfo[arg1].field_256
                        poolInfo[arg1].field_512 = block.timestamp
                        poolInfo[arg1].field_768 += (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]
                        poolInfo[arg1].field_1024 = poolInfo[arg1].field_1024
                        poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
                        poolInfo[arg1].field_1536 = poolInfo[arg1].field_1536
                        if block.timestamp < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 'CoffinMakerV2: need to wait for next harvest time'
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                            revert with 0, 17
                        if userInfo[arg1][msg.sender].field_256 < 0 and (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
                            revert with 0, 'CoffinMakerV2: no pending reward '
                        userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
                        if block.timestamp > !poolInfo[arg1].field_1024:
                            revert with 0, 17
                        userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
                        require ext_code.size(fundAddress)
                        call fundAddress.transferTo(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args rewardTokenAddress, address(arg2), ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbf994279: ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + ((10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint) - (5 * 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 97) / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256, arg2, msg.sender, arg1
    stor1 = 1
}



}
