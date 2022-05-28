contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const sub_fbbb0df3(?) = (336 * 24 * 3600)

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
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function canWithdraw(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if userInfo[arg1][address(arg2)].field_768 > !poolInfo[arg1].field_1280:
        revert with 0, 17
    return userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1280 <= block.timestamp
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

function set(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid harvest interval'
    if arg4 > 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid lockup interval'
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
    emit SetPool(arg2, arg3, arg4, arg1);
}

function add(uint256 arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid harvest interval'
    if arg4 > 336 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: invalid lockup interval'
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
    stor36B6[stor5.length] = arg4
    if poolInfo.length < 1:
        revert with 0, 17
    emit 0xcb295bb6: arg1, arg3, arg4, poolInfo.length - 1, arg2
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
        emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
        return poolInfo[arg1].field_0, 
               poolInfo[arg1].field_256,
               block.timestamp,
               poolInfo[arg1].field_768,
               poolInfo[arg1].field_1024,
               poolInfo[arg1].field_1280
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
    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
    emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1);
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           block.timestamp,
           poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]),
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function withdraw(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CoffinMaker: withdraw request greater than staked amount'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: withdraw amount should be more than 0'
    if userInfo[arg1][msg.sender].field_768 > !poolInfo[arg1].field_1280:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_768 + poolInfo[arg1].field_1280 > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoffinMaker: still in withdraw lockup time'
    mem[100] = this.address
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
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
    mem[ceil32(return_data.size) + 132] = arg3
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call poolInfo[arg1].field_0 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) << 288)
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
    emit Withdraw(arg2, arg3, msg.sender, arg1);
    stor1 = 1
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

function massUpdatePools(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        _33 = mem[64]
        mem[64] = mem[64] + 192
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[_33 + 64] = 0
        mem[_33 + 96] = 0
        mem[_33 + 128] = 0
        mem[_33 + 160] = 0
        if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 5
        _35 = mem[64]
        mem[64] = mem[64] + 192
        mem[_35] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_35 + 32] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[_35 + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[_35 + 96] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768
        mem[_35 + 128] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024
        mem[_35 + 160] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1280
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
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _40 = mem[_39]
            if not mem[_39]:
                mem[_35 + 64] = block.timestamp
                if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.timestamp
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1280 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1280
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _40
                mem[mem[64] + 64] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768
                emit UpdatePool(block.timestamp, _40, poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768, cd[((32 * idx) + arg1 + 36)]);
            else:
                if block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond) and poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_39]:
                    revert with 0, 18
                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / mem[_39]):
                    revert with 0, 17
                mem[_35 + 96] = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) - (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 * rewardPerSecond * poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256) / totalAllocPoint / mem[_39])
                mem[_35 + 64] = block.timestamp
                if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 5
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_512 = block.timestamp
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_768 = mem[_35 + 96]
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024
                poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1280 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1280
                _62 = mem[_35 + 96]
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _40
                mem[mem[64] + 64] = _62
                emit UpdatePool(block.timestamp, _40, _62, cd[((32 * idx) + arg1 + 36)]);
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
        if block.timestamp < userInfo[arg1][msg.sender].field_512:
            revert with 0, 'CoffinMaker: need to wait for next harvest time'
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
            revert with 0, 'CoffinMaker: no pending reward '
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
        if block.timestamp > !poolInfo[arg1].field_1024:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(rewardTokenAddress)
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            else:
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
            poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
            if block.timestamp < userInfo[arg1][msg.sender].field_512:
                revert with 0, 'CoffinMaker: need to wait for next harvest time'
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 < 0 and userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
                revert with 0, 'CoffinMaker: no pending reward '
            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
            if block.timestamp > !poolInfo[arg1].field_1024:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(rewardTokenAddress)
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
            poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280
            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1);
            if block.timestamp < userInfo[arg1][msg.sender].field_512:
                revert with 0, 'CoffinMaker: need to wait for next harvest time'
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 < userInfo[arg1][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][msg.sender].field_256 >= 0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 < 0 and (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12 > userInfo[arg1][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256 <= 0:
                revert with 0, 'CoffinMaker: no pending reward '
            userInfo[arg1][msg.sender].field_256 = (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12
            if block.timestamp > !poolInfo[arg1].field_1024:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_512 = block.timestamp + poolInfo[arg1].field_1024
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(rewardTokenAddress)
                if ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0) + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0) / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
            _118 = mem[64]
            mem[64] = mem[64] + 192
            mem[_118] = 0
            mem[_118 + 32] = 0
            mem[_118 + 64] = 0
            mem[_118 + 96] = 0
            mem[_118 + 128] = 0
            mem[_118 + 160] = 0
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 5
            _121 = mem[64]
            mem[64] = mem[64] + 192
            mem[_121] = poolInfo[idx].field_0
            mem[_121 + 32] = poolInfo[idx].field_256
            mem[_121 + 64] = poolInfo[idx].field_512
            mem[_121 + 96] = poolInfo[idx].field_768
            mem[_121 + 128] = poolInfo[idx].field_1024
            mem[_121 + 160] = poolInfo[idx].field_1280
            if block.timestamp < poolInfo[idx].field_512:
                revert with 0, 17
            if not block.timestamp - poolInfo[idx].field_512:
                mem[0] = msg.sender
                mem[32] = sha3(idx, 6)
                if block.timestamp < userInfo[idx][msg.sender].field_512:
                    revert with 0, 'CoffinMaker: need to wait for next harvest time'
                if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                    revert with 0, 17
                if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256 <= 0:
                    revert with 0, 'CoffinMaker: no pending reward '
                userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12
                if block.timestamp > !poolInfo[idx].field_1024:
                    revert with 0, 17
                userInfo[idx][msg.sender].field_512 = block.timestamp + poolInfo[idx].field_1024
                mem[mem[64] + 4] = this.address
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _155 = mem[_154]
                if mem[_154]:
                    mem[mem[64] + 4] = msg.sender
                    if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256 <= mem[_154]:
                        mem[mem[64] + 36] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_179] == bool(mem[_179])
                    else:
                        mem[mem[64] + 36] = _155
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _155
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _180 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_180] == bool(mem[_180])
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
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _131 = mem[_129]
                if not mem[_129]:
                    mem[_121 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = poolInfo[idx].field_768
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                    mem[mem[64] + 32] = _131
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _131, poolInfo[idx].field_768, idx);
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 6)
                    if block.timestamp < userInfo[idx][msg.sender].field_512:
                        revert with 0, 'CoffinMaker: need to wait for next harvest time'
                    if userInfo[idx][msg.sender].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256 <= 0:
                        revert with 0, 'CoffinMaker: no pending reward '
                    userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12
                    if block.timestamp > !poolInfo[idx].field_1024:
                        revert with 0, 17
                    userInfo[idx][msg.sender].field_512 = block.timestamp + poolInfo[idx].field_1024
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _181 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _186 = mem[_181]
                    if mem[_181]:
                        mem[mem[64] + 4] = msg.sender
                        if (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256 <= mem[_181]:
                            mem[mem[64] + 36] = (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[idx][msg.sender].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][msg.sender].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _200 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_200] == bool(mem[_200])
                        else:
                            mem[mem[64] + 36] = _186
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _186
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _201 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_201] == bool(mem[_201])
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
                    if not mem[_129]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_129]):
                        revert with 0, 17
                    mem[_121 + 96] = poolInfo[idx].field_768 + (10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / mem[_129])
                    mem[_121 + 64] = block.timestamp
                    if idx >= poolInfo.length:
                        revert with 0, 50
                    poolInfo[idx].field_0 = poolInfo[idx].field_0
                    poolInfo[idx].field_256 = poolInfo[idx].field_256
                    poolInfo[idx].field_512 = block.timestamp
                    poolInfo[idx].field_768 = mem[_121 + 96]
                    poolInfo[idx].field_1024 = poolInfo[idx].field_1024
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280
                    _176 = mem[_121 + 96]
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _131
                    mem[mem[64] + 64] = _176
                    emit UpdatePool(block.timestamp, _131, _176, idx);
                    mem[0] = msg.sender
                    mem[32] = sha3(idx, 6)
                    if block.timestamp < userInfo[idx][msg.sender].field_512:
                        revert with 0, 'CoffinMaker: need to wait for next harvest time'
                    _187 = mem[_121 + 96]
                    if userInfo[idx][msg.sender].field_0 and mem[_121 + 96] > -1 / userInfo[idx][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_0 * mem[_121 + 96] / 10^12 < userInfo[idx][msg.sender].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[idx][msg.sender].field_256 >= 0:
                        revert with 0, 17
                    if userInfo[idx][msg.sender].field_256 < 0 and userInfo[idx][msg.sender].field_0 * mem[_121 + 96] / 10^12 > userInfo[idx][msg.sender].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if (userInfo[idx][msg.sender].field_0 * mem[_121 + 96] / 10^12) - userInfo[idx][msg.sender].field_256 <= 0:
                        revert with 0, 'CoffinMaker: no pending reward '
                    userInfo[idx][msg.sender].field_256 = userInfo[idx][msg.sender].field_0 * mem[_121 + 96] / 10^12
                    if block.timestamp > !poolInfo[idx].field_1024:
                        revert with 0, 17
                    userInfo[idx][msg.sender].field_512 = block.timestamp + poolInfo[idx].field_1024
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _213 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _214 = mem[_213]
                    if mem[_213]:
                        mem[mem[64] + 4] = msg.sender
                        if (userInfo[idx][msg.sender].field_0 * _187 / 10^12) - userInfo[idx][msg.sender].field_256 <= mem[_213]:
                            mem[mem[64] + 36] = (userInfo[idx][msg.sender].field_0 * _187 / 10^12) - userInfo[idx][msg.sender].field_256
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[idx][msg.sender].field_0 * _187 / 10^12) - userInfo[idx][msg.sender].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _221 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_221] == bool(mem[_221])
                        else:
                            mem[mem[64] + 36] = _214
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _214
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _222 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_222] == bool(mem[_222])
                    mem[mem[64]] = (userInfo[idx][msg.sender].field_0 * _187 / 10^12) - userInfo[idx][msg.sender].field_256
                    emit Harvest(((userInfo[idx][msg.sender].field_0 * _187 / 10^12) - userInfo[idx][msg.sender].field_256), msg.sender, idx);
            stor1 = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
