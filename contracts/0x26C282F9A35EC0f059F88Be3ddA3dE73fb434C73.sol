contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
const sub_76ab8136(?) = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address owner;
uint256 stor1;
address rewardTokenAddress;
uint256 rewardsPerBlock;
uint256 denominationEmitAmount;
uint256 minimumEmitAmount;
uint256 maximumEmitAmount;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 remainingRewards;

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() {
    return totalAllocPoint
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function denominationEmitAmount() {
    return denominationEmitAmount
}

function startBlock() {
    return startBlock
}

function rewardsPerBlock() {
    return rewardsPerBlock
}

function maximumEmitAmount() {
    return maximumEmitAmount
}

function owner() {
    return owner
}

function remainingRewards() {
    return remainingRewards
}

function minimumEmitAmount() {
    return minimumEmitAmount
}

function rewardToken() {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require 0 < poolInfo.length
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    if userInfo[msg.sender].field_0 > uint256(poolInfo.field_1024):
        revert with 0, 'SafeMath: subtraction overflow'
    uint256(poolInfo.field_1024) -= userInfo[msg.sender].field_0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(address(poolInfo.field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[msg.sender].field_32
    call address(poolInfo.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[msg.sender].field_0, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    emit EmergencyWithdraw(userInfo[msg.sender].field_0, msg.sender);
    stor1 = 1
}

function updatePool() {
    require 0 < poolInfo.length
    if block.number > uint256(poolInfo.field_512):
        if uint256(poolInfo.field_1024):
            if uint256(poolInfo.field_256):
                if remainingRewards:
                    if uint256(poolInfo.field_512) > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - uint256(poolInfo.field_512):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / totalAllocPoint < remainingRewards:
                            if 0 / totalAllocPoint > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards -= 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                        else:
                            if remainingRewards > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards = 0
                            if not remainingRewards:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * remainingRewards / remainingRewards != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    else:
                        if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) / block.number - uint256(poolInfo.field_512) != rewardsPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / totalAllocPoint < remainingRewards:
                                if 0 / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                        else:
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                                if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                                if not (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
        uint256(poolInfo.field_512) = block.number
}

function updateEmissionSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        denominationEmitAmount = arg1
        minimumEmitAmount = arg2
        maximumEmitAmount = arg3
        if not remainingRewards:
            rewardsPerBlock = 0
        else:
            if not denominationEmitAmount:
                revert with 0, 'SafeMath: division by zero'
            rewardsPerBlock = remainingRewards / denominationEmitAmount
            if maximumEmitAmount < remainingRewards / denominationEmitAmount:
                rewardsPerBlock = maximumEmitAmount
                if minimumEmitAmount >= maximumEmitAmount:
                    rewardsPerBlock = minimumEmitAmount
                else:
                    rewardsPerBlock = maximumEmitAmount
            else:
                rewardsPerBlock = remainingRewards / denominationEmitAmount
                if minimumEmitAmount >= remainingRewards / denominationEmitAmount:
                    rewardsPerBlock = minimumEmitAmount
                else:
                    rewardsPerBlock = remainingRewards / denominationEmitAmount
    else:
        if not uint256(poolInfo.field_1024):
            uint256(poolInfo.field_512) = block.number
            denominationEmitAmount = arg1
            minimumEmitAmount = arg2
            maximumEmitAmount = arg3
            if not remainingRewards:
                rewardsPerBlock = 0
            else:
                if not denominationEmitAmount:
                    revert with 0, 'SafeMath: division by zero'
                rewardsPerBlock = remainingRewards / denominationEmitAmount
                if maximumEmitAmount < remainingRewards / denominationEmitAmount:
                    rewardsPerBlock = maximumEmitAmount
                    if minimumEmitAmount >= maximumEmitAmount:
                        rewardsPerBlock = minimumEmitAmount
                    else:
                        rewardsPerBlock = maximumEmitAmount
                else:
                    rewardsPerBlock = remainingRewards / denominationEmitAmount
                    if minimumEmitAmount >= remainingRewards / denominationEmitAmount:
                        rewardsPerBlock = minimumEmitAmount
                    else:
                        rewardsPerBlock = remainingRewards / denominationEmitAmount
        else:
            if not uint256(poolInfo.field_256):
                uint256(poolInfo.field_512) = block.number
                denominationEmitAmount = arg1
                minimumEmitAmount = arg2
                maximumEmitAmount = arg3
                if not remainingRewards:
                    rewardsPerBlock = 0
                else:
                    if not denominationEmitAmount:
                        revert with 0, 'SafeMath: division by zero'
                    rewardsPerBlock = remainingRewards / denominationEmitAmount
                    if maximumEmitAmount < remainingRewards / denominationEmitAmount:
                        rewardsPerBlock = maximumEmitAmount
                        if minimumEmitAmount >= maximumEmitAmount:
                            rewardsPerBlock = minimumEmitAmount
                        else:
                            rewardsPerBlock = maximumEmitAmount
                    else:
                        rewardsPerBlock = remainingRewards / denominationEmitAmount
                        if minimumEmitAmount >= remainingRewards / denominationEmitAmount:
                            rewardsPerBlock = minimumEmitAmount
                        else:
                            rewardsPerBlock = remainingRewards / denominationEmitAmount
            else:
                if not remainingRewards:
                    uint256(poolInfo.field_512) = block.number
                    denominationEmitAmount = arg1
                    minimumEmitAmount = arg2
                    maximumEmitAmount = arg3
                    rewardsPerBlock = 0
                else:
                    if uint256(poolInfo.field_512) > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - uint256(poolInfo.field_512):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / totalAllocPoint < remainingRewards:
                            if 0 / totalAllocPoint > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards -= 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                        else:
                            if remainingRewards > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards = 0
                            if not remainingRewards:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * remainingRewards / remainingRewards != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    else:
                        if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) / block.number - uint256(poolInfo.field_512) != rewardsPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / totalAllocPoint < remainingRewards:
                                if 0 / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                        else:
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                                if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                                if not (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    uint256(poolInfo.field_512) = block.number
                    denominationEmitAmount = arg1
                    minimumEmitAmount = arg2
                    maximumEmitAmount = arg3
                    if not remainingRewards:
                        rewardsPerBlock = 0
                    else:
                        if not denominationEmitAmount:
                            revert with 0, 'SafeMath: division by zero'
                        rewardsPerBlock = remainingRewards / denominationEmitAmount
                        if maximumEmitAmount < remainingRewards / denominationEmitAmount:
                            rewardsPerBlock = maximumEmitAmount
                            if minimumEmitAmount >= maximumEmitAmount:
                                rewardsPerBlock = minimumEmitAmount
                            else:
                                rewardsPerBlock = maximumEmitAmount
                        else:
                            rewardsPerBlock = remainingRewards / denominationEmitAmount
                            if minimumEmitAmount >= remainingRewards / denominationEmitAmount:
                                rewardsPerBlock = minimumEmitAmount
                            else:
                                rewardsPerBlock = remainingRewards / denominationEmitAmount
    emit UpdateEmissionSettings(arg1, arg2, arg3, rewardsPerBlock, msg.sender);
}

function pendingRewards(address arg1) {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if not uint256(poolInfo.field_1024):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if not remainingRewards:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - uint256(poolInfo.field_512):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if 0 / totalAllocPoint < remainingRewards:
            if not 0 / totalAllocPoint:
                if not uint256(poolInfo.field_1024):
                    revert with 0, 'SafeMath: division by zero'
                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not uint256(poolInfo.field_1024):
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    else:
        if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) / block.number - uint256(poolInfo.field_512) != rewardsPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if 0 / totalAllocPoint < remainingRewards:
                if not 0 / totalAllocPoint:
                    if not uint256(poolInfo.field_1024):
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[address(arg1)].field_256
                    if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not uint256(poolInfo.field_1024):
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        else:
            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) != uint256(poolInfo.field_256):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                if not (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                    if not uint256(poolInfo.field_1024):
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[address(arg1)].field_256
                    if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
                if 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not uint256(poolInfo.field_1024):
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if not remainingRewards:
        if not uint256(poolInfo.field_1024):
            revert with 0, 'SafeMath: division by zero'
        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if 10^12 * remainingRewards / remainingRewards != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not uint256(poolInfo.field_1024):
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    if (10^12 * remainingRewards / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[address(arg1)].field_256 > (10^12 * remainingRewards / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * remainingRewards / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function income(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call rewardTokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if not uint256(poolInfo.field_1024):
            uint256(poolInfo.field_512) = block.number
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            call rewardTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
        else:
            if not uint256(poolInfo.field_256):
                uint256(poolInfo.field_512) = block.number
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call rewardTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if not remainingRewards:
                    uint256(poolInfo.field_512) = block.number
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call rewardTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
                        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    if uint256(poolInfo.field_512) > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - uint256(poolInfo.field_512):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / totalAllocPoint < remainingRewards:
                            if 0 / totalAllocPoint > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards -= 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                        else:
                            if remainingRewards > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards = 0
                            if not remainingRewards:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * remainingRewards / remainingRewards != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    else:
                        if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) / block.number - uint256(poolInfo.field_512) != rewardsPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / totalAllocPoint < remainingRewards:
                                if 0 / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                        else:
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                                if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                                if not (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    uint256(poolInfo.field_512) = block.number
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[672 len 4] = 0
                    call rewardTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
    if arg1 + remainingRewards < remainingRewards:
        revert with 0, 'SafeMath: addition overflow'
    remainingRewards += arg1
    if not remainingRewards:
        rewardsPerBlock = 0
    else:
        if not denominationEmitAmount:
            revert with 0, 'SafeMath: division by zero'
        rewardsPerBlock = remainingRewards / denominationEmitAmount
        if maximumEmitAmount < remainingRewards / denominationEmitAmount:
            rewardsPerBlock = maximumEmitAmount
            if minimumEmitAmount >= maximumEmitAmount:
                rewardsPerBlock = minimumEmitAmount
            else:
                rewardsPerBlock = maximumEmitAmount
        else:
            rewardsPerBlock = remainingRewards / denominationEmitAmount
            if minimumEmitAmount >= remainingRewards / denominationEmitAmount:
                rewardsPerBlock = minimumEmitAmount
            else:
                rewardsPerBlock = remainingRewards / denominationEmitAmount
    stor1 = 1
}

function harvestFor(address arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 != msg.sender:
        if arg1 != tx.origin:
            revert with 0, 'harvestFor: FORBIDDEN'
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if userInfo[address(arg1)].field_0:
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[address(arg1)].field_256:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < -userInfo[address(arg1)].field_256:
                        if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                            if not userInfo[address(arg1)].field_0:
                                userInfo[address(arg1)].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                        else:
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg1 with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 361 len 28]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 358 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                    else:
                        if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), -userInfo[address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                            if not userInfo[address(arg1)].field_0:
                                userInfo[address(arg1)].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                        else:
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args -userInfo[address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg1 with:
                               value -userInfo[address(arg1)].field_256 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 361 len 28]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 358 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                    emit Harvest(-userInfo[address(arg1)].field_256, arg1);
            else:
                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                        if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                            if not userInfo[address(arg1)].field_0:
                                userInfo[address(arg1)].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                        else:
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg1 with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 361 len 28]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 358 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                    else:
                        if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                            if not userInfo[address(arg1)].field_0:
                                userInfo[address(arg1)].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                        else:
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg1 with:
                               value (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 361 len 28]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 358 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                    emit Harvest(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256), arg1);
    else:
        if not uint256(poolInfo.field_1024):
            uint256(poolInfo.field_512) = block.number
            if userInfo[address(arg1)].field_0:
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(arg1)].field_256:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < -userInfo[address(arg1)].field_256:
                            if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg1 with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 361 len 28]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 358 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                        else:
                            if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), -userInfo[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args -userInfo[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg1 with:
                                   value -userInfo[address(arg1)].field_256 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 361 len 28]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 358 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                        emit Harvest(-userInfo[address(arg1)].field_256, arg1);
                else:
                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                            if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg1 with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 361 len 28]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 358 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                        else:
                            if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                if not userInfo[address(arg1)].field_0:
                                    userInfo[address(arg1)].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg1 with:
                                   value (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 361 len 28]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 358 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256), arg1);
        else:
            if not uint256(poolInfo.field_256):
                uint256(poolInfo.field_512) = block.number
                if userInfo[address(arg1)].field_0:
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[address(arg1)].field_256:
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < -userInfo[address(arg1)].field_256:
                                if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call arg1 with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        36,
                                                        0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 361 len 28]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 358 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), -userInfo[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args -userInfo[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call arg1 with:
                                       value -userInfo[address(arg1)].field_256 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        36,
                                                        0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 361 len 28]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 358 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            emit Harvest(-userInfo[address(arg1)].field_256, arg1);
                    else:
                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                                if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call arg1 with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        36,
                                                        0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 361 len 28]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 358 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            else:
                                if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                    if not userInfo[address(arg1)].field_0:
                                        userInfo[address(arg1)].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call arg1 with:
                                       value (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        36,
                                                        0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 361 len 28]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 358 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256), arg1);
            else:
                if not remainingRewards:
                    uint256(poolInfo.field_512) = block.number
                    if userInfo[address(arg1)].field_0:
                        if not userInfo[address(arg1)].field_0:
                            if userInfo[address(arg1)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(arg1)].field_256:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < -userInfo[address(arg1)].field_256:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call arg1 with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 361 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 358 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), -userInfo[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args -userInfo[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call arg1 with:
                                           value -userInfo[address(arg1)].field_256 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 361 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 358 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                emit Harvest(-userInfo[address(arg1)].field_256, arg1);
                        else:
                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call arg1 with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 361 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 358 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call arg1 with:
                                           value (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 361 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 358 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                emit Harvest(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256), arg1);
                else:
                    if uint256(poolInfo.field_512) > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - uint256(poolInfo.field_512):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / totalAllocPoint < remainingRewards:
                            if 0 / totalAllocPoint > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards -= 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                        else:
                            if remainingRewards > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards = 0
                            if not remainingRewards:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * remainingRewards / remainingRewards != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    else:
                        if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) / block.number - uint256(poolInfo.field_512) != rewardsPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / totalAllocPoint < remainingRewards:
                                if 0 / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                        else:
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                                if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                                if not (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    uint256(poolInfo.field_512) = block.number
                    if userInfo[address(arg1)].field_0:
                        if not userInfo[address(arg1)].field_0:
                            if userInfo[address(arg1)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[address(arg1)].field_256:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < -userInfo[address(arg1)].field_256:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[583 len 29]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call arg1 with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[616 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 617 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 614 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), -userInfo[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[583 len 29]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args -userInfo[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call arg1 with:
                                           value -userInfo[address(arg1)].field_256 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[616 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 617 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 614 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                emit Harvest(-userInfo[address(arg1)].field_256, arg1);
                        else:
                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[583 len 29]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call arg1 with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[616 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 617 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 614 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                else:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[583 len 29]
                                        if not userInfo[address(arg1)].field_0:
                                            userInfo[address(arg1)].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                            userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call arg1 with:
                                           value (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[616 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 617 len 28]
                                            if not userInfo[address(arg1)].field_0:
                                                userInfo[address(arg1)].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 614 len 31]
                                                userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                                emit Harvest(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256), arg1);
    stor1 = 1
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[msg.sender].field_0:
            if not arg1:
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_256 = 0
                else:
                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(address(poolInfo.field_0)):
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_0 += arg1
                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo.field_1024) += arg1
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[msg.sender].field_0 += arg1
                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo.field_1024) += arg1
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                        if not ext_code.size(address(poolInfo.field_0)):
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_1024) += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < -userInfo[msg.sender].field_256:
                        if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                if not ext_code.size(address(poolInfo.field_0)):
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_1024) += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[576 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 361 len 28]
                                emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 358 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 559 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 577 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 485]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                    else:
                        if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                if not ext_code.size(address(poolInfo.field_0)):
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_1024) += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value -userInfo[msg.sender].field_256 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[576 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 361 len 28]
                                emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 358 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 559 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 577 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 485]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
            else:
                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                        if not ext_code.size(address(poolInfo.field_0)):
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_1024) += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                if not ext_code.size(address(poolInfo.field_0)):
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_1024) += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[576 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 361 len 28]
                                emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 358 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 559 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 577 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 485]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                    else:
                        if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                if not ext_code.size(address(poolInfo.field_0)):
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_1024) += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[576 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[484]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 563 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 554 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 361 len 28]
                                emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 358 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 559 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 577 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 485]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2):
                                                 arg1,
                                                 mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
    else:
        if not uint256(poolInfo.field_1024):
            uint256(poolInfo.field_512) = block.number
            if not userInfo[msg.sender].field_0:
                if not arg1:
                    if not userInfo[msg.sender].field_0:
                        userInfo[msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(address(poolInfo.field_0)):
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_1024) += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_1024) += arg1
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                            if not ext_code.size(address(poolInfo.field_0)):
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_1024) += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < -userInfo[msg.sender].field_256:
                            if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 531 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 522 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                    emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[576 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[484]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 563 len 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 361 len 28]
                                    emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 358 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 559 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 577 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 485]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(address arg1, uint256 arg2):
                                                     arg1,
                                                     mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                        else:
                            if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 531 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 522 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args -userInfo[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value -userInfo[msg.sender].field_256 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                    emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[576 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[484]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 563 len 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 361 len 28]
                                    emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 358 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 559 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 577 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 485]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(address arg1, uint256 arg2):
                                                     arg1,
                                                     mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                else:
                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                            if not ext_code.size(address(poolInfo.field_0)):
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_1024) += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                            if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 531 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 522 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                    emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[576 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[484]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 563 len 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 361 len 28]
                                    emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 358 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 559 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 577 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 485]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(address arg1, uint256 arg2):
                                                     arg1,
                                                     mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                        else:
                            if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 531 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 522 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args ((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                    emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[576 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[484]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 563 len 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 554 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 361 len 28]
                                    emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 358 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 559 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 577 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 485]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(address arg1, uint256 arg2):
                                                     arg1,
                                                     mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
        else:
            if not uint256(poolInfo.field_256):
                uint256(poolInfo.field_512) = block.number
                if not userInfo[msg.sender].field_0:
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            userInfo[msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(address(poolInfo.field_0)):
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_1024) += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_1024) += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                if not ext_code.size(address(poolInfo.field_0)):
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_1024) += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < -userInfo[msg.sender].field_256:
                                if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                    emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 531 len 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 522 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                        emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[576 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[484]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 563 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        36,
                                                        0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 361 len 28]
                                        emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 358 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 559 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 577 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 485]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                            else:
                                if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                    emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 531 len 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 522 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args -userInfo[msg.sender].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value -userInfo[msg.sender].field_256 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                        emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[576 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[484]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 563 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        36,
                                                        0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 361 len 28]
                                        emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 358 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 559 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 577 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 485]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                    else:
                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                if not ext_code.size(address(poolInfo.field_0)):
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_1024) += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                                if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                    emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 531 len 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 522 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[576 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[484]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 563 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        36,
                                                        0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 361 len 28]
                                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 358 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 559 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 577 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 485]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                            else:
                                if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                    emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                        if not ext_code.size(address(poolInfo.field_0)):
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 531 len 22]
                                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[msg.sender].field_0 += arg1
                                        if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_1024) += arg1
                                        if not userInfo[msg.sender].field_0:
                                            userInfo[msg.sender].field_256 = 0
                                        else:
                                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 522 len 31]
                                            userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                         gas gas_remaining wei
                                        args ((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[576 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[484]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 563 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 554 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        36,
                                                        0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 361 len 28]
                                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 358 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 559 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 577 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 485]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
            else:
                if not remainingRewards:
                    uint256(poolInfo.field_512) = block.number
                    if not userInfo[msg.sender].field_0:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(address(poolInfo.field_0)):
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_1024) += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 403 len 22]
                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[msg.sender].field_0 += arg1
                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_1024) += arg1
                                if not userInfo[msg.sender].field_0:
                                    userInfo[msg.sender].field_256 = 0
                                else:
                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 531 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 522 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < -userInfo[msg.sender].field_256:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                        emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 531 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 522 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[576 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[484]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 563 len 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 'SafeMath: addition overflow'
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 361 len 28]
                                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 358 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 559 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 577 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 485]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                else:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                        emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 531 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 522 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args -userInfo[msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value -userInfo[msg.sender].field_256 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[576 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[484]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 563 len 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 'SafeMath: addition overflow'
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 361 len 28]
                                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 358 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 559 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 577 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 485]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 531 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 522 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 531 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 522 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[576 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[484]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 563 len 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 'SafeMath: addition overflow'
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 361 len 28]
                                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 358 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 559 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 577 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 485]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                else:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[327 len 29]
                                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 531 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 522 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[360 len 28]
                                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[452 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[576 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[548 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[484]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 563 len 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 'SafeMath: addition overflow'
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 554 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 361 len 28]
                                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 358 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 559 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 453 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 577 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 549 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: division by zero'
                                                mem[ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 485]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 564 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 555 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 550 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                else:
                    if uint256(poolInfo.field_512) > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - uint256(poolInfo.field_512):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / totalAllocPoint < remainingRewards:
                            if 0 / totalAllocPoint > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards -= 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                        else:
                            if remainingRewards > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards = 0
                            if not remainingRewards:
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * remainingRewards / remainingRewards != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not uint256(poolInfo.field_1024):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    else:
                        if (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) / block.number - uint256(poolInfo.field_512) != rewardsPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / totalAllocPoint < remainingRewards:
                                if 0 / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                        else:
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardsPerBlock) - (uint256(poolInfo.field_512) * rewardsPerBlock) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                                if (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint
                                if not (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * (block.number * rewardsPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardsPerBlock * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    uint256(poolInfo.field_512) = block.number
                    if not userInfo[msg.sender].field_0:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                            if not ext_code.size(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_1024) += arg1
                            if not userInfo[msg.sender].field_0:
                                userInfo[msg.sender].field_256 = 0
                            else:
                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 650 len 31]
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
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[708]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 787 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 778 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < -userInfo[msg.sender].field_256:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[583 len 29]
                                        emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[708]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 787 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 778 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[616 len 28]
                                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[832 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[804 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[740]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 'SafeMath: addition overflow'
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 617 len 28]
                                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 614 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 815 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 709 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 833 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 805 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 741 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 741]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 820 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 811 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 806 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                else:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[583 len 29]
                                        emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[708]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 787 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 778 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args -userInfo[msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value -userInfo[msg.sender].field_256 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[616 len 28]
                                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[832 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[804 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[740]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 'SafeMath: addition overflow'
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 617 len 28]
                                            emit Harvest(-userInfo[msg.sender].field_256, msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 614 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 815 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 709 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 833 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 805 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 741 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 741]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 820 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 811 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 806 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                        else:
                            if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[708]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 787 len 22]
                                    if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[msg.sender].field_0 += arg1
                                    if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_1024) += arg1
                                    if not userInfo[msg.sender].field_0:
                                        userInfo[msg.sender].field_256 = 0
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 778 len 31]
                                        userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[583 len 29]
                                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[708]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 787 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 778 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[616 len 28]
                                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[832 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[804 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[740]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 'SafeMath: addition overflow'
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 617 len 28]
                                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 614 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 815 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 709 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 833 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 805 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 741 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 741]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 820 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 811 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 806 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                else:
                                    if rewardTokenAddress != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 32, 35, 0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65, mem[583 len 29]
                                        emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        else:
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                            if not ext_code.size(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[708]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 787 len 22]
                                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[msg.sender].field_0 += arg1
                                            if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_1024) += arg1
                                            if not userInfo[msg.sender].field_0:
                                                userInfo[msg.sender].field_256 = 0
                                            else:
                                                if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 778 len 31]
                                                userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
                                             gas gas_remaining wei
                                            args ((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call msg.sender with:
                                           value (uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 32, 36, 0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45, mem[616 len 28]
                                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[708 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[832 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[804 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[740]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 819 len 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 'SafeMath: addition overflow'
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 810 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 
                                                            32,
                                                            36,
                                                            0x73736166655472616e736665724554483a204554485f5452414e534645525f4641494c45,
                                                            mem[ceil32(return_data.size) + 617 len 28]
                                            emit Harvest(((uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256), msg.sender);
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 614 len 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x44416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 815 len 26]
                                                if not ext_code.size(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 709 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 833 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 805 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 741 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 741]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 820 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[msg.sender].field_0 += arg1
                                                if arg1 + uint256(poolInfo.field_1024) < uint256(poolInfo.field_1024):
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                uint256(poolInfo.field_1024) += arg1
                                                if not userInfo[msg.sender].field_0:
                                                    userInfo[msg.sender].field_256 = 0
                                                else:
                                                    if uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 811 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[msg.sender].field_0 / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 806 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
    stor1 = 1
}



}
