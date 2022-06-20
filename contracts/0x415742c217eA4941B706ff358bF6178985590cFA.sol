contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
address syrupAddress;
address rewardTokenAddress;
uint256 rewardPerSec;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor6;
uint256 startTimestamp;
uint256 bonusEndTimestamp;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function rewardPerSec() payable {
    return rewardPerSec
}

function syrup() payable {
    return syrupAddress
}

function owner() payable {
    return owner
}

function bonusEndTimestamp() payable {
    return bonusEndTimestamp
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

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    bonusEndTimestamp = block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndTimestamp:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if arg1 >= bonusEndTimestamp:
        return 0
    if arg1 > bonusEndTimestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    return (bonusEndTimestamp - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw() payable {
    require 0 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(poolInfo.field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[msg.sender].field_32
    call address(poolInfo.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[msg.sender].field_0
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    emit EmergencyWithdraw(0, msg.sender);
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'not enough token'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg1) >> 32
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, arg1
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp <= bonusEndTimestamp:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / stor6:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                else:
                    if (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec) / block.timestamp - poolInfo[arg1].field_512 != rewardPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec):
                        if not stor6:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / stor6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    else:
                        if (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / (block.timestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor6:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6 / (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6 / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndTimestamp:
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / stor6:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_512 > bonusEndTimestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndTimestamp - poolInfo[arg1].field_512:
                        if not stor6:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / stor6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    else:
                        if (bonusEndTimestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec) / bonusEndTimestamp - poolInfo[arg1].field_512 != rewardPerSec:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndTimestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec):
                            if not stor6:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor6:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                        else:
                            if (bonusEndTimestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / (bonusEndTimestamp * rewardPerSec) - (poolInfo[arg1].field_512 * rewardPerSec) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not stor6:
                                revert with 0, 'SafeMath: division by zero'
                            if not (bonusEndTimestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (bonusEndTimestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6 / (bonusEndTimestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (bonusEndTimestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (bonusEndTimestamp * rewardPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSec * poolInfo[arg1].field_256) / stor6 / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    require ext_code.size(address(poolInfo.field_0))
    staticcall address(poolInfo.field_0).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if block.timestamp <= bonusEndTimestamp:
        if uint256(poolInfo.field_512) > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - uint256(poolInfo.field_512):
            if not stor6:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / stor6:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if (block.timestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec) / block.timestamp - uint256(poolInfo.field_512) != rewardPerSec:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec):
            if not stor6:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / stor6:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / (block.timestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec) != uint256(poolInfo.field_256):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not stor6:
            revert with 0, 'SafeMath: division by zero'
        if not (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if 10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndTimestamp:
        if not stor6:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / stor6:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_256 > (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > bonusEndTimestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndTimestamp - uint256(poolInfo.field_512):
        if not stor6:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / stor6:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if (bonusEndTimestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec) / bonusEndTimestamp - uint256(poolInfo.field_512) != rewardPerSec:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (bonusEndTimestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec):
        if not stor6:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / stor6:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / (bonusEndTimestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec) != uint256(poolInfo.field_256):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not stor6:
        revert with 0, 'SafeMath: division by zero'
    if not (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if 10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    if (10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[address(arg1)].field_256 > (10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        if block.timestamp <= bonusEndTimestamp:
            _253 = mem[64]
            mem[64] = mem[64] + 64
            mem[_253] = 30
            mem[_253 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _253 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_288] = 26
                mem[_288 + 32] = 'SafeMath: division by zero'
                if not stor6:
                    _298 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _298 + 68] = mem[idx + _288 + 32]
                        idx = idx + 32
                        continue 
                    mem[_298 + 68] = mem[_298 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _298 + -mem[64] + 100
                if not 0 / stor6:
                    _358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_358] = 26
                    mem[_358 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _378 + 68] = mem[idx + _358 + 32]
                        idx = idx + 32
                        continue 
                    mem[_378 + 68] = mem[_378 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _378 + -mem[64] + 100
                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _368 = mem[64]
                mem[64] = mem[64] + 64
                mem[_368] = 26
                mem[_368 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _393 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _393 + 68] = mem[idx + _368 + 32]
                    idx = idx + 32
                    continue 
                mem[_393 + 68] = mem[_393 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _393 + -mem[64] + 100
            if (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec) / block.timestamp - poolInfo[idx].field_512 != rewardPerSec:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec):
                _294 = mem[64]
                mem[64] = mem[64] + 64
                mem[_294] = 26
                mem[_294 + 32] = 'SafeMath: division by zero'
                if not stor6:
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _305 + 68] = mem[idx + _294 + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                if not 0 / stor6:
                    _367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_367] = 26
                    mem[_367 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _390 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _390 + 68] = mem[idx + _367 + 32]
                        idx = idx + 32
                        continue 
                    mem[_390 + 68] = mem[_390 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _390 + -mem[64] + 100
                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _377 = mem[64]
                mem[64] = mem[64] + 64
                mem[_377] = 26
                mem[_377 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _408 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _408 + 68] = mem[idx + _377 + 32]
                    idx = idx + 32
                    continue 
                mem[_408 + 68] = mem[_408 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _408 + -mem[64] + 100
            if (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / (block.timestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _297 = mem[64]
            mem[64] = mem[64] + 64
            mem[_297] = 26
            mem[_297 + 32] = 'SafeMath: division by zero'
            if not stor6:
                _311 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _311 + 68] = mem[idx + _297 + 32]
                    idx = idx + 32
                    continue 
                mem[_311 + 68] = mem[_311 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _311 + -mem[64] + 100
            if not (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6:
                _376 = mem[64]
                mem[64] = mem[64] + 64
                mem[_376] = 26
                mem[_376 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _405 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _405 + 68] = mem[idx + _376 + 32]
                    idx = idx + 32
                    continue 
                mem[_405 + 68] = mem[_405 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _405 + -mem[64] + 100
            if 10^12 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6 / (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _389 = mem[64]
            mem[64] = mem[64] + 64
            mem[_389] = 26
            mem[_389 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _419 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _419 + 68] = mem[idx + _389 + 32]
                idx = idx + 32
                continue 
            mem[_419 + 68] = mem[_419 + 74 len 26]
            revert with memory
              from mem[64]
               len _419 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndTimestamp:
            _281 = mem[64]
            mem[64] = mem[64] + 64
            mem[_281] = 26
            mem[_281 + 32] = 'SafeMath: division by zero'
            if not stor6:
                _282 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _282 + 68] = mem[idx + _281 + 32]
                    idx = idx + 32
                    continue 
                mem[_282 + 68] = mem[_282 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _282 + -mem[64] + 100
            if not 0 / stor6:
                _327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_327] = 26
                mem[_327 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _343 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _343 + 68] = mem[idx + _327 + 32]
                    idx = idx + 32
                    continue 
                mem[_343 + 68] = mem[_343 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _343 + -mem[64] + 100
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_336] = 26
            mem[_336 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _348 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _348 + 68] = mem[idx + _336 + 32]
                idx = idx + 32
                continue 
            mem[_348 + 68] = mem[_348 + 74 len 26]
            revert with memory
              from mem[64]
               len _348 + -mem[64] + 100
        _254 = mem[64]
        mem[64] = mem[64] + 64
        mem[_254] = 30
        mem[_254 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndTimestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _254 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndTimestamp - poolInfo[idx].field_512:
            _291 = mem[64]
            mem[64] = mem[64] + 64
            mem[_291] = 26
            mem[_291 + 32] = 'SafeMath: division by zero'
            if not stor6:
                _302 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _302 + 68] = mem[idx + _291 + 32]
                    idx = idx + 32
                    continue 
                mem[_302 + 68] = mem[_302 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _302 + -mem[64] + 100
            if not 0 / stor6:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 26
                mem[_361 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _383 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _383 + 68] = mem[idx + _361 + 32]
                    idx = idx + 32
                    continue 
                mem[_383 + 68] = mem[_383 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _383 + -mem[64] + 100
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _372 = mem[64]
            mem[64] = mem[64] + 64
            mem[_372] = 26
            mem[_372 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _400 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _400 + 68] = mem[idx + _372 + 32]
                idx = idx + 32
                continue 
            mem[_400 + 68] = mem[_400 + 74 len 26]
            revert with memory
              from mem[64]
               len _400 + -mem[64] + 100
        if (bonusEndTimestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec) / bonusEndTimestamp - poolInfo[idx].field_512 != rewardPerSec:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (bonusEndTimestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec):
            _295 = mem[64]
            mem[64] = mem[64] + 64
            mem[_295] = 26
            mem[_295 + 32] = 'SafeMath: division by zero'
            if not stor6:
                _308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _308 + 68] = mem[idx + _295 + 32]
                    idx = idx + 32
                    continue 
                mem[_308 + 68] = mem[_308 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _308 + -mem[64] + 100
            if not 0 / stor6:
                _371 = mem[64]
                mem[64] = mem[64] + 64
                mem[_371] = 26
                mem[_371 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _397 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _397 + 68] = mem[idx + _371 + 32]
                    idx = idx + 32
                    continue 
                mem[_397 + 68] = mem[_397 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _397 + -mem[64] + 100
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _382 = mem[64]
            mem[64] = mem[64] + 64
            mem[_382] = 26
            mem[_382 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / stor6 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _415 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _415 + 68] = mem[idx + _382 + 32]
                idx = idx + 32
                continue 
            mem[_415 + 68] = mem[_415 + 74 len 26]
            revert with memory
              from mem[64]
               len _415 + -mem[64] + 100
        if (bonusEndTimestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / (bonusEndTimestamp * rewardPerSec) - (poolInfo[idx].field_512 * rewardPerSec) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _301 = mem[64]
        mem[64] = mem[64] + 64
        mem[_301] = 26
        mem[_301 + 32] = 'SafeMath: division by zero'
        if not stor6:
            _315 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _315 + 68] = mem[idx + _301 + 32]
                idx = idx + 32
                continue 
            mem[_315 + 68] = mem[_315 + 74 len 26]
            revert with memory
              from mem[64]
               len _315 + -mem[64] + 100
        if not (bonusEndTimestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6:
            _381 = mem[64]
            mem[64] = mem[64] + 64
            mem[_381] = 26
            mem[_381 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _412 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _412 + 68] = mem[idx + _381 + 32]
                idx = idx + 32
                continue 
            mem[_412 + 68] = mem[_412 + 74 len 26]
            revert with memory
              from mem[64]
               len _412 + -mem[64] + 100
        if 10^12 * (bonusEndTimestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6 / (bonusEndTimestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _396 = mem[64]
        mem[64] = mem[64] + 64
        mem[_396] = 26
        mem[_396 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (bonusEndTimestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (bonusEndTimestamp * rewardPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSec * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _426 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _426 + 68] = mem[idx + _396 + 32]
            idx = idx + 32
            continue 
        mem[_426 + 68] = mem[_426 + 74 len 26]
        revert with memory
          from mem[64]
           len _426 + -mem[64] + 100
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.timestamp <= uint256(poolInfo.field_512):
        if not userInfo[msg.sender].field_0:
            if not arg1:
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_256 = 0
                else:
                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo.field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call address(poolInfo.field_0) with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_0 += arg1
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_0 += arg1
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
            emit Deposit(arg1, msg.sender);
        else:
            if not userInfo[msg.sender].field_0:
                if userInfo[msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[msg.sender].field_256:
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[msg.sender].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -userInfo[msg.sender].field_256) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 585 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(address arg1, uint256 arg2):
                                     arg1,
                                     mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                     msg.sender,
            else:
                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 585 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(address arg1, uint256 arg2):
                                     arg1,
                                     mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                     msg.sender,
    else:
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            uint256(poolInfo.field_512) = block.timestamp
            if not userInfo[msg.sender].field_0:
                if not arg1:
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call address(poolInfo.field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                emit Deposit(arg1, msg.sender);
            else:
                if not userInfo[msg.sender].field_0:
                    if userInfo[msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userInfo[msg.sender].field_256:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[msg.sender].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -userInfo[msg.sender].field_256) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 490 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(address arg1, uint256 arg2):
                                         arg1,
                                         mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                else:
                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 490 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(address arg1, uint256 arg2):
                                         arg1,
                                         mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
        else:
            if block.timestamp <= bonusEndTimestamp:
                if uint256(poolInfo.field_512) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - uint256(poolInfo.field_512):
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / stor6:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                else:
                    if (block.timestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec) / block.timestamp - uint256(poolInfo.field_512) != rewardPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec):
                        if not stor6:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / stor6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    else:
                        if (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / (block.timestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec) != uint256(poolInfo.field_256):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor6:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * (block.timestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]
                uint256(poolInfo.field_512) = block.timestamp
                if not userInfo[msg.sender].field_0:
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[608 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 586 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    if not userInfo[msg.sender].field_0:
                        if userInfo[msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not -userInfo[msg.sender].field_256:
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[736 len 4] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 714 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[msg.sender].field_256) >> 32
                            call rewardTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, -userInfo[msg.sender].field_256) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 682 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 809]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[msg.sender].field_0 += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(address arg1, uint256 arg2):
                                             arg1,
                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                    else:
                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[736 len 4] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 714 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(rewardTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) >> 32
                            call rewardTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 682 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 809]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[msg.sender].field_0 += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(address arg1, uint256 arg2):
                                             arg1,
                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
            else:
                if uint256(poolInfo.field_512) >= bonusEndTimestamp:
                    if not stor6:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / stor6:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    uint256(poolInfo.field_512) = block.timestamp
                    if not userInfo[msg.sender].field_0:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if not userInfo[msg.sender].field_0:
                            if userInfo[msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 650 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[msg.sender].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, -userInfo[msg.sender].field_256) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 618 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 713 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 809 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 745]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[msg.sender].field_0 += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 815 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 650 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 618 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 713 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 837 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 809 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 745]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[msg.sender].field_0 += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 815 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                else:
                    if uint256(poolInfo.field_512) > bonusEndTimestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndTimestamp - uint256(poolInfo.field_512):
                        if not stor6:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / stor6:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    else:
                        if (bonusEndTimestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec) / bonusEndTimestamp - uint256(poolInfo.field_512) != rewardPerSec:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndTimestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec):
                            if not stor6:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor6:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                        else:
                            if (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / (bonusEndTimestamp * rewardPerSec) - (uint256(poolInfo.field_512) * rewardPerSec) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not stor6:
                                revert with 0, 'SafeMath: division by zero'
                            if not (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * (bonusEndTimestamp * rewardPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSec * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]
                    uint256(poolInfo.field_512) = block.timestamp
                    if not userInfo[msg.sender].field_0:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[608 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[516]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 595 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 586 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if not userInfo[msg.sender].field_0:
                            if userInfo[msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[msg.sender].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, -userInfo[msg.sender].field_256) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 682 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 809]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[msg.sender].field_0 += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 714 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 682 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 809]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[msg.sender].field_0 += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
}



}
