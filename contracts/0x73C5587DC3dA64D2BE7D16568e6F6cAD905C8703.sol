contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const TOTAL_REWARDS = 62900 * 10^18

const BLOCKS_PER_WEEK = (168 * 24 * 3600)


address operatorAddress;
address sub_3249af49Address;
address mouseAddress;
address devFundAddress;
uint256 harvestFee;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;
uint256 mousePerBlock;
uint256 runningBlocks;

function mouse() payable {
    return mouseAddress
}

function endBlock() payable {
    return endBlock
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           bool(poolInfo[arg1].field_1040)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_3249af49(?) payable {
    return sub_3249af49Address
}

function devFund() payable {
    return devFundAddress
}

function startBlock() payable {
    return startBlock
}

function operator() payable {
    return operatorAddress
}

function runningBlocks() payable {
    return runningBlocks
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function mousePerBlock() payable {
    return mousePerBlock
}

function harvestFee() payable {
    return harvestFee
}

function _fallback() payable {
    revert
}

function setDevFund(address arg1) payable {
    require calldata.size - 4 >= 32
    if devFundAddress != msg.sender:
        revert with 0, 'dev: wut?'
    devFundAddress = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x735368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    operatorAddress = arg1
}

function setHarvestFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x735368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    if arg1 > 1000:
        revert with 0, 'can't be more than 10%'
    harvestFee = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x735368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    if block.number < endBlock + (4368 * 24 * 3600):
        if arg1 == mouseAddress:
            revert with 0, 'mouse'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if arg1 == poolInfo[idx].field_0:
                revert with 0, 'pool.lpToken'
            idx = idx + 1
            continue 
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function getGeneratedReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        return 0
    if arg2 < endBlock:
        if arg2 <= startBlock:
            return 0
        if arg1 > startBlock:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2 - arg1:
                return 0
            require arg2 - arg1
            if (arg2 * mousePerBlock) - (arg1 * mousePerBlock) / arg2 - arg1 != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return ((arg2 * mousePerBlock) - (arg1 * mousePerBlock))
        if startBlock > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - startBlock:
            return 0
        require arg2 - startBlock
        if (arg2 * mousePerBlock) - (startBlock * mousePerBlock) / arg2 - startBlock != mousePerBlock:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((arg2 * mousePerBlock) - (startBlock * mousePerBlock))
    if arg1 >= endBlock:
        return 0
    if arg1 > startBlock:
        if arg1 > endBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not endBlock - arg1:
            return 0
        require endBlock - arg1
        if (endBlock * mousePerBlock) - (arg1 * mousePerBlock) / endBlock - arg1 != mousePerBlock:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((endBlock * mousePerBlock) - (arg1 * mousePerBlock))
    if startBlock > endBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endBlock - startBlock:
        return 0
    require endBlock - startBlock
    if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((endBlock * mousePerBlock) - (startBlock * mousePerBlock))
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not poolInfo[arg1].field_1040:
                poolInfo[arg1].field_1040 = 1
                if totalAllocPoint + poolInfo[arg1].field_256 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += poolInfo[arg1].field_256
            if totalAllocPoint > 0:
                if poolInfo[arg1].field_512 >= block.number:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < endBlock:
                        if block.number <= startBlock:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > startBlock:
                                if poolInfo[arg1].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[arg1].field_512
                                    if (block.number * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock) / block.number - poolInfo[arg1].field_512 != mousePerBlock:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (block.number * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock)
                                        if (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / (block.number * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if startBlock > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - startBlock:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - startBlock
                                    if (block.number * mousePerBlock) - (startBlock * mousePerBlock) / block.number - startBlock != mousePerBlock:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (block.number * mousePerBlock) - (startBlock * mousePerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * mousePerBlock) - (startBlock * mousePerBlock)
                                        if (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / (block.number * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= endBlock:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > startBlock:
                                if poolInfo[arg1].field_512 > endBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not endBlock - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require endBlock - poolInfo[arg1].field_512
                                    if (endBlock * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock) / endBlock - poolInfo[arg1].field_512 != mousePerBlock:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (endBlock * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (endBlock * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock)
                                        if (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / (endBlock * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if startBlock > endBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not endBlock - startBlock:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require endBlock - startBlock
                                    if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (endBlock * mousePerBlock) - (startBlock * mousePerBlock):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (endBlock * mousePerBlock) - (startBlock * mousePerBlock)
                                        if (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / (endBlock * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingShare(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= block.number:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.number < endBlock:
        if block.number <= startBlock:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > startBlock:
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require block.number - poolInfo[arg1].field_512
            if (block.number * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock) / block.number - poolInfo[arg1].field_512 != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.number * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (block.number * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock)
            if (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / (block.number * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock) != poolInfo[arg1].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
            if 10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if startBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - startBlock:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require block.number - startBlock
        if (block.number * mousePerBlock) - (startBlock * mousePerBlock) / block.number - startBlock != mousePerBlock:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * mousePerBlock) - (startBlock * mousePerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * mousePerBlock) - (startBlock * mousePerBlock)
        if (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / (block.number * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= endBlock:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > startBlock:
        if poolInfo[arg1].field_512 > endBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not endBlock - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require endBlock - poolInfo[arg1].field_512
        if (endBlock * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock) / endBlock - poolInfo[arg1].field_512 != mousePerBlock:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (endBlock * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (endBlock * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock)
        if (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / (endBlock * mousePerBlock) - (poolInfo[arg1].field_512 * mousePerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if startBlock > endBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endBlock - startBlock:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require endBlock - startBlock
    if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (endBlock * mousePerBlock) - (startBlock * mousePerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (endBlock * mousePerBlock) - (startBlock * mousePerBlock)
    if (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / (endBlock * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (endBlock * mousePerBlock * poolInfo[arg1].field_256) - (startBlock * mousePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if poolInfo[idx].field_1040:
            if totalAllocPoint <= 0:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.number:
                _1027 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1027] = 26
                mem[_1027 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1046 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1046 + idx + 68] = mem[_1027 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1046 + 68] = mem[_1046 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1046 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1132 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1132] = 26
                    mem[_1132 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1151 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1151 + idx + 68] = mem[_1132 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1151 + 68] = mem[_1151 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1151 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1150 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1150] = 26
                mem[_1150 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1190 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1190 + idx + 68] = mem[_1150 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1190 + 68] = mem[_1190 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1190 + -mem[64] + 100
            if block.number < endBlock:
                if block.number <= startBlock:
                    _1040 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1040] = 26
                    mem[_1040 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1065 + idx + 68] = mem[_1040 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1065 + 68] = mem[_1065 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1065 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1146 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1146] = 26
                        mem[_1146 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1175 + idx + 68] = mem[_1146 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1175 + 68] = mem[_1175 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1175 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1174 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1174] = 26
                    mem[_1174 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1211 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1211 + idx + 68] = mem[_1174 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1211 + 68] = mem[_1211 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1211 + -mem[64] + 100
                if poolInfo[idx].field_512 > startBlock:
                    _1011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1011] = 30
                    mem[_1011 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        _1015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1015 + idx + 68] = mem[_1011 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1015 + 68] = mem[_1015 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1015 + -mem[64] + 100
                    if not block.number - poolInfo[idx].field_512:
                        _1144 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1144] = 26
                        mem[_1144 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _1167 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1167 + idx + 68] = mem[_1144 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1167 + 68] = mem[_1167 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1167 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _1415 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1415] = 26
                            mem[_1415 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1475 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1475 + idx + 68] = mem[_1415 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1475 + 68] = mem[_1475 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1475 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1474 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1474] = 26
                        mem[_1474 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1536 + idx + 68] = mem[_1474 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1536 + 68] = mem[_1536 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1536 + -mem[64] + 100
                    require block.number - poolInfo[idx].field_512
                    if (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / block.number - poolInfo[idx].field_512 != mousePerBlock:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                        _1166 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1166] = 26
                        mem[_1166 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _1202 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1202 + idx + 68] = mem[_1166 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1202 + 68] = mem[_1202 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1202 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _1473 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1473] = 26
                            mem[_1473 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1533 + idx + 68] = mem[_1473 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1533 + 68] = mem[_1533 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1533 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1532] = 26
                        mem[_1532 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1595 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1595 + idx + 68] = mem[_1532 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1595 + 68] = mem[_1595 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1595 + -mem[64] + 100
                    require (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                    if (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1201] = 26
                    mem[_1201 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1265 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1265 + idx + 68] = mem[_1201 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1265 + 68] = mem[_1265 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1265 + -mem[64] + 100
                    require totalAllocPoint
                    if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1531 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1531] = 26
                        mem[_1531 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1592 + idx + 68] = mem[_1531 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1592 + 68] = mem[_1592 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1592 + -mem[64] + 100
                    require (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1591 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1591] = 26
                    mem[_1591 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1683 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1683 + idx + 68] = mem[_1591 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1683 + 68] = mem[_1683 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1683 + -mem[64] + 100
                _1012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1012] = 30
                mem[_1012 + 32] = 'SafeMath: subtraction overflow'
                if startBlock > block.number:
                    _1018 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1018 + idx + 68] = mem[_1012 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1018 + 68] = mem[_1018 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1018 + -mem[64] + 100
                if not block.number - startBlock:
                    _1145 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1145] = 26
                    mem[_1145 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1171 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1171 + idx + 68] = mem[_1145 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1171 + 68] = mem[_1171 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1171 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1417] = 26
                        mem[_1417 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1480 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1480 + idx + 68] = mem[_1417 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1480 + 68] = mem[_1480 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1480 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1479] = 26
                    mem[_1479 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1545 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1545 + idx + 68] = mem[_1479 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1545 + 68] = mem[_1545 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1545 + -mem[64] + 100
                require block.number - startBlock
                if (block.number * mousePerBlock) - (startBlock * mousePerBlock) / block.number - startBlock != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * mousePerBlock) - (startBlock * mousePerBlock):
                    _1170 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1170] = 26
                    mem[_1170 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1207 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1207 + idx + 68] = mem[_1170 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1207 + 68] = mem[_1207 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1207 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1478 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1478] = 26
                        mem[_1478 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1542 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1542 + idx + 68] = mem[_1478 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1542 + 68] = mem[_1542 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1542 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1541] = 26
                    mem[_1541 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1605 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1605 + idx + 68] = mem[_1541 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1605 + 68] = mem[_1605 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1605 + -mem[64] + 100
                require (block.number * mousePerBlock) - (startBlock * mousePerBlock)
                if (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1206] = 26
                mem[_1206 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1270 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1270 + idx + 68] = mem[_1206 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1270 + 68] = mem[_1270 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1270 + -mem[64] + 100
                require totalAllocPoint
                if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1540 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1540] = 26
                    mem[_1540 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1602 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1602 + idx + 68] = mem[_1540 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1602 + 68] = mem[_1602 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1602 + -mem[64] + 100
                require (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 26
                mem[_1601 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1690 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1690 + idx + 68] = mem[_1601 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1690 + 68] = mem[_1690 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1690 + -mem[64] + 100
            if poolInfo[idx].field_512 >= endBlock:
                _1045 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1045] = 26
                mem[_1045 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1068 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1068 + idx + 68] = mem[_1045 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1068 + 68] = mem[_1068 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1068 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1149] = 26
                    mem[_1149 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1187 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1187 + idx + 68] = mem[_1149 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1187 + 68] = mem[_1187 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1187 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1186] = 26
                mem[_1186 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1225 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1225 + idx + 68] = mem[_1186 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1225 + 68] = mem[_1225 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1225 + -mem[64] + 100
            if poolInfo[idx].field_512 > startBlock:
                _1013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1013] = 30
                mem[_1013 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > endBlock:
                    _1021 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1021 + idx + 68] = mem[_1013 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1021 + 68] = mem[_1021 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1021 + -mem[64] + 100
                if not endBlock - poolInfo[idx].field_512:
                    _1147 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1147] = 26
                    mem[_1147 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1179 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1179 + idx + 68] = mem[_1147 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1179 + 68] = mem[_1179 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1179 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1419 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1419] = 26
                        mem[_1419 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1485 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1485 + idx + 68] = mem[_1419 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1485 + 68] = mem[_1485 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1485 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1484] = 26
                    mem[_1484 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1554 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1554 + idx + 68] = mem[_1484 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1554 + 68] = mem[_1554 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1554 + -mem[64] + 100
                require endBlock - poolInfo[idx].field_512
                if (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / endBlock - poolInfo[idx].field_512 != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                    _1178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1178] = 26
                    mem[_1178 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1216 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1216 + idx + 68] = mem[_1178 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1216 + 68] = mem[_1216 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1216 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1483] = 26
                        mem[_1483 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1551 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1551 + idx + 68] = mem[_1483 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1551 + 68] = mem[_1551 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1551 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1550] = 26
                    mem[_1550 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1615 + idx + 68] = mem[_1550 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1615 + 68] = mem[_1615 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1615 + -mem[64] + 100
                require (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1215] = 26
                mem[_1215 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1277 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1277 + idx + 68] = mem[_1215 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1277 + 68] = mem[_1277 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1277 + -mem[64] + 100
                require totalAllocPoint
                if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1549] = 26
                    mem[_1549 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1612 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1612 + idx + 68] = mem[_1549 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1612 + 68] = mem[_1612 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1612 + -mem[64] + 100
                require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1611 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1611] = 26
                mem[_1611 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1697 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1697 + idx + 68] = mem[_1611 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1697 + 68] = mem[_1697 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1697 + -mem[64] + 100
            _1014 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1014] = 30
            mem[_1014 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > endBlock:
                _1024 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1024 + idx + 68] = mem[_1014 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1024 + 68] = mem[_1024 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1024 + -mem[64] + 100
            if not endBlock - startBlock:
                _1148 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1148] = 26
                mem[_1148 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1183 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1183 + idx + 68] = mem[_1148 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1183 + 68] = mem[_1183 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1183 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1421 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1421] = 26
                    mem[_1421 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1490 + idx + 68] = mem[_1421 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1490 + 68] = mem[_1490 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1490 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1489 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1489] = 26
                mem[_1489 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1563 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1563 + idx + 68] = mem[_1489 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1563 + 68] = mem[_1563 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1563 + -mem[64] + 100
            require endBlock - startBlock
            if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (endBlock * mousePerBlock) - (startBlock * mousePerBlock):
                _1182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1182] = 26
                mem[_1182 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1221 + idx + 68] = mem[_1182 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1221 + 68] = mem[_1221 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1221 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1488] = 26
                    mem[_1488 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1560 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1560 + idx + 68] = mem[_1488 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1560 + 68] = mem[_1560 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1560 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1559 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1559] = 26
                mem[_1559 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1625 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1625 + idx + 68] = mem[_1559 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1625 + 68] = mem[_1625 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1625 + -mem[64] + 100
            require (endBlock * mousePerBlock) - (startBlock * mousePerBlock)
            if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1220 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1220] = 26
            mem[_1220 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1282 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1282 + idx + 68] = mem[_1220 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1282 + 68] = mem[_1282 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1282 + -mem[64] + 100
            require totalAllocPoint
            if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1558 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1558] = 26
                mem[_1558 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1622 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1622 + idx + 68] = mem[_1558 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1622 + 68] = mem[_1622 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1622 + -mem[64] + 100
            require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1621 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1621] = 26
            mem[_1621 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1704 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1704 + idx + 68] = mem[_1621 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1704 + 68] = mem[_1704 + 74 len 26]
            revert with memory
              from mem[64]
               len _1704 + -mem[64] + 100
        poolInfo[idx].field_1040 = 1
        if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += poolInfo[idx].field_256
        if totalAllocPoint <= 0:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if poolInfo[idx].field_512 >= block.number:
            _1072 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1072] = 26
            mem[_1072 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1100 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1100 + idx + 68] = mem[_1072 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1100 + 68] = mem[_1100 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1100 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _1194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1194] = 26
                mem[_1194 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1238 + idx + 68] = mem[_1194 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1238 + 68] = mem[_1238 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1238 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1237] = 26
            mem[_1237 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1314 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1314 + idx + 68] = mem[_1237 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1314 + 68] = mem[_1314 + 74 len 26]
            revert with memory
              from mem[64]
               len _1314 + -mem[64] + 100
        if block.number < endBlock:
            if block.number <= startBlock:
                _1094 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1094] = 26
                mem[_1094 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1113 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1113 + idx + 68] = mem[_1094 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1113 + 68] = mem[_1113 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1113 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1233 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1233] = 26
                    mem[_1233 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1299 + idx + 68] = mem[_1233 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1299 + 68] = mem[_1299 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1299 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1298 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1298] = 26
                mem[_1298 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1358 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1358 + idx + 68] = mem[_1298 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1358 + 68] = mem[_1358 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1358 + -mem[64] + 100
            if poolInfo[idx].field_512 > startBlock:
                _1032 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1032] = 30
                mem[_1032 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _1053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1053 + idx + 68] = mem[_1032 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1053 + 68] = mem[_1053 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1053 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _1231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1231] = 26
                    mem[_1231 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1291 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1291 + idx + 68] = mem[_1231 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1291 + 68] = mem[_1291 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1291 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1568 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1568] = 26
                        mem[_1568 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1633 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1633 + idx + 68] = mem[_1568 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1633 + 68] = mem[_1633 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1633 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1632] = 26
                    mem[_1632 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1716 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1716 + idx + 68] = mem[_1632 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1716 + 68] = mem[_1716 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1716 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / block.number - poolInfo[idx].field_512 != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                    _1290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1290] = 26
                    mem[_1290 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1349 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1349 + idx + 68] = mem[_1290 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1349 + 68] = mem[_1349 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1349 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1631 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1631] = 26
                        mem[_1631 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1713 + idx + 68] = mem[_1631 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1713 + 68] = mem[_1713 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1713 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1712 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1712] = 26
                    mem[_1712 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1803 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1803 + idx + 68] = mem[_1712 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1803 + 68] = mem[_1803 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1803 + -mem[64] + 100
                require (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                if (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1348 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1348] = 26
                mem[_1348 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1422 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1422 + idx + 68] = mem[_1348 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1422 + 68] = mem[_1422 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1422 + -mem[64] + 100
                require totalAllocPoint
                if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1711 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1711] = 26
                    mem[_1711 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1800 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1800 + idx + 68] = mem[_1711 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1800 + 68] = mem[_1800 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1800 + -mem[64] + 100
                require (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1799] = 26
                mem[_1799 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1891 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1891 + idx + 68] = mem[_1799 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1891 + 68] = mem[_1891 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1891 + -mem[64] + 100
            _1033 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1033] = 30
            mem[_1033 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > block.number:
                _1056 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1056 + idx + 68] = mem[_1033 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1056 + 68] = mem[_1056 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1056 + -mem[64] + 100
            if not block.number - startBlock:
                _1232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1232] = 26
                mem[_1232 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1295 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1295 + idx + 68] = mem[_1232 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1295 + 68] = mem[_1295 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1295 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1570 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1570] = 26
                    mem[_1570 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1638 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1638 + idx + 68] = mem[_1570 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1638 + 68] = mem[_1638 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1638 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1637] = 26
                mem[_1637 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1725 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1725 + idx + 68] = mem[_1637 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1725 + 68] = mem[_1725 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1725 + -mem[64] + 100
            require block.number - startBlock
            if (block.number * mousePerBlock) - (startBlock * mousePerBlock) / block.number - startBlock != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * mousePerBlock) - (startBlock * mousePerBlock):
                _1294 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1294] = 26
                mem[_1294 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1354 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1354 + idx + 68] = mem[_1294 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1354 + 68] = mem[_1354 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1354 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1636] = 26
                    mem[_1636 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1722 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1722 + idx + 68] = mem[_1636 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1722 + 68] = mem[_1722 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1722 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1721 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1721] = 26
                mem[_1721 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1813 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1813 + idx + 68] = mem[_1721 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1813 + 68] = mem[_1813 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1813 + -mem[64] + 100
            require (block.number * mousePerBlock) - (startBlock * mousePerBlock)
            if (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1353 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1353] = 26
            mem[_1353 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1427 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1427 + idx + 68] = mem[_1353 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1427 + 68] = mem[_1427 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1427 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1720] = 26
                mem[_1720 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1810 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1810 + idx + 68] = mem[_1720 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1810 + 68] = mem[_1810 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1810 + -mem[64] + 100
            require (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1809 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1809] = 26
            mem[_1809 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1898 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1898 + idx + 68] = mem[_1809 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1898 + 68] = mem[_1898 + 74 len 26]
            revert with memory
              from mem[64]
               len _1898 + -mem[64] + 100
        if poolInfo[idx].field_512 >= endBlock:
            _1099 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1099] = 26
            mem[_1099 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1116 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1116 + idx + 68] = mem[_1099 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1116 + 68] = mem[_1116 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1116 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _1236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1236] = 26
                mem[_1236 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1311 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1311 + idx + 68] = mem[_1236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1311 + 68] = mem[_1311 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1311 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1310 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1310] = 26
            mem[_1310 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1372 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1372 + idx + 68] = mem[_1310 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1372 + 68] = mem[_1372 + 74 len 26]
            revert with memory
              from mem[64]
               len _1372 + -mem[64] + 100
        if poolInfo[idx].field_512 > startBlock:
            _1034 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1034] = 30
            mem[_1034 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > endBlock:
                _1059 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1059 + idx + 68] = mem[_1034 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1059 + 68] = mem[_1059 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1059 + -mem[64] + 100
            if not endBlock - poolInfo[idx].field_512:
                _1234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1234] = 26
                mem[_1234 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1303 + idx + 68] = mem[_1234 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1303 + 68] = mem[_1303 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1303 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1572 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1572] = 26
                    mem[_1572 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1643 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1643 + idx + 68] = mem[_1572 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1643 + 68] = mem[_1643 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1643 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1642 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1642] = 26
                mem[_1642 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1734 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1734 + idx + 68] = mem[_1642 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1734 + 68] = mem[_1734 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1734 + -mem[64] + 100
            require endBlock - poolInfo[idx].field_512
            if (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / endBlock - poolInfo[idx].field_512 != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                _1302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1302] = 26
                mem[_1302 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1363 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1363 + idx + 68] = mem[_1302 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1363 + 68] = mem[_1363 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1363 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1641] = 26
                    mem[_1641 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1731 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1731 + idx + 68] = mem[_1641 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1731 + 68] = mem[_1731 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1731 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1730 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1730] = 26
                mem[_1730 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1823 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1823 + idx + 68] = mem[_1730 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1823 + 68] = mem[_1823 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1823 + -mem[64] + 100
            require (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
            if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1362] = 26
            mem[_1362 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1434 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1434 + idx + 68] = mem[_1362 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1434 + 68] = mem[_1434 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1434 + -mem[64] + 100
            require totalAllocPoint
            if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1729 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1729] = 26
                mem[_1729 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1820 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1820 + idx + 68] = mem[_1729 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1820 + 68] = mem[_1820 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1820 + -mem[64] + 100
            require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1819 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1819] = 26
            mem[_1819 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1905 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1905 + idx + 68] = mem[_1819 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1905 + 68] = mem[_1905 + 74 len 26]
            revert with memory
              from mem[64]
               len _1905 + -mem[64] + 100
        _1035 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1035] = 30
        mem[_1035 + 32] = 'SafeMath: subtraction overflow'
        if startBlock > endBlock:
            _1062 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1062 + idx + 68] = mem[_1035 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1062 + 68] = mem[_1062 + 70 len 30]
            revert with memory
              from mem[64]
               len _1062 + -mem[64] + 100
        if not endBlock - startBlock:
            _1235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1235] = 26
            mem[_1235 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1307 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1307 + idx + 68] = mem[_1235 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1307 + 68] = mem[_1307 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1307 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _1574 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1574] = 26
                mem[_1574 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1648 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1648 + idx + 68] = mem[_1574 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1648 + 68] = mem[_1648 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1648 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1647 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1647] = 26
            mem[_1647 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1743 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1743 + idx + 68] = mem[_1647 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1743 + 68] = mem[_1743 + 74 len 26]
            revert with memory
              from mem[64]
               len _1743 + -mem[64] + 100
        require endBlock - startBlock
        if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (endBlock * mousePerBlock) - (startBlock * mousePerBlock):
            _1306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1306] = 26
            mem[_1306 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1368 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1368 + idx + 68] = mem[_1306 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1368 + 68] = mem[_1368 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1368 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _1646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1646] = 26
                mem[_1646 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1740 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1740 + idx + 68] = mem[_1646 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1740 + 68] = mem[_1740 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1740 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1739 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1739] = 26
            mem[_1739 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1833 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1833 + idx + 68] = mem[_1739 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1833 + 68] = mem[_1833 + 74 len 26]
            revert with memory
              from mem[64]
               len _1833 + -mem[64] + 100
        require (endBlock * mousePerBlock) - (startBlock * mousePerBlock)
        if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1367 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1367] = 26
        mem[_1367 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _1439 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1439 + idx + 68] = mem[_1367 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1439 + 68] = mem[_1439 + 74 len 26]
            revert with memory
              from mem[64]
               len _1439 + -mem[64] + 100
        require totalAllocPoint
        if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _1738 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1738] = 26
            mem[_1738 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1830 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1830 + idx + 68] = mem[_1738 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1830 + 68] = mem[_1830 + 74 len 26]
            revert with memory
              from mem[64]
               len _1830 + -mem[64] + 100
        require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1829 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1829] = 26
        mem[_1829 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1912 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_1912 + idx + 68] = mem[_1829 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1912 + 68] = mem[_1912 + 74 len 26]
        revert with memory
          from mem[64]
           len _1912 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, uint16 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x735368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if poolInfo[idx].field_1040:
            if totalAllocPoint <= 0:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.number:
                _1053 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1053] = 26
                mem[_1053 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1072 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1072 + idx + 68] = mem[_1053 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1072 + 68] = mem[_1072 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1072 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1158] = 26
                    mem[_1158 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1177 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1177 + idx + 68] = mem[_1158 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1177 + 68] = mem[_1177 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1177 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1176] = 26
                mem[_1176 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1216 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1216 + idx + 68] = mem[_1176 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1216 + 68] = mem[_1216 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1216 + -mem[64] + 100
            if block.number < endBlock:
                if block.number <= startBlock:
                    _1066 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1066] = 26
                    mem[_1066 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1091 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1091 + idx + 68] = mem[_1066 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1091 + 68] = mem[_1091 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1091 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1172] = 26
                        mem[_1172 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1201 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1201 + idx + 68] = mem[_1172 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1201 + 68] = mem[_1201 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1201 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1200 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1200] = 26
                    mem[_1200 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1237 + idx + 68] = mem[_1200 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1237 + 68] = mem[_1237 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1237 + -mem[64] + 100
                if poolInfo[idx].field_512 > startBlock:
                    _1037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1037] = 30
                    mem[_1037 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        _1041 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1041 + idx + 68] = mem[_1037 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1041 + 68] = mem[_1041 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1041 + -mem[64] + 100
                    if not block.number - poolInfo[idx].field_512:
                        _1170 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1170] = 26
                        mem[_1170 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _1193 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1193 + idx + 68] = mem[_1170 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1193 + 68] = mem[_1193 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1193 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _1441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1441] = 26
                            mem[_1441 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1501 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1501 + idx + 68] = mem[_1441 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1501 + 68] = mem[_1501 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1501 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1500 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1500] = 26
                        mem[_1500 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1562 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1562 + idx + 68] = mem[_1500 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1562 + 68] = mem[_1562 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1562 + -mem[64] + 100
                    require block.number - poolInfo[idx].field_512
                    if (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / block.number - poolInfo[idx].field_512 != mousePerBlock:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                        _1192 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1192] = 26
                        mem[_1192 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _1228 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1228 + idx + 68] = mem[_1192 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1228 + 68] = mem[_1228 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1228 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _1499 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1499] = 26
                            mem[_1499 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1559 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1559 + idx + 68] = mem[_1499 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1559 + 68] = mem[_1559 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1559 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1558 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1558] = 26
                        mem[_1558 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1621 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1621 + idx + 68] = mem[_1558 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1621 + 68] = mem[_1621 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1621 + -mem[64] + 100
                    require (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                    if (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1227 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1227] = 26
                    mem[_1227 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1291 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1291 + idx + 68] = mem[_1227 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1291 + 68] = mem[_1291 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1291 + -mem[64] + 100
                    require totalAllocPoint
                    if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1557 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1557] = 26
                        mem[_1557 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1618 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1618 + idx + 68] = mem[_1557 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1618 + 68] = mem[_1618 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1618 + -mem[64] + 100
                    require (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1617 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1617] = 26
                    mem[_1617 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1709 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1709 + idx + 68] = mem[_1617 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1709 + 68] = mem[_1709 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1709 + -mem[64] + 100
                _1038 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1038] = 30
                mem[_1038 + 32] = 'SafeMath: subtraction overflow'
                if startBlock > block.number:
                    _1044 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1044 + idx + 68] = mem[_1038 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1044 + 68] = mem[_1044 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1044 + -mem[64] + 100
                if not block.number - startBlock:
                    _1171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1171] = 26
                    mem[_1171 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1197 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1197 + idx + 68] = mem[_1171 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1197 + 68] = mem[_1197 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1197 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1443 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1443] = 26
                        mem[_1443 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1506 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1506 + idx + 68] = mem[_1443 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1506 + 68] = mem[_1506 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1506 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1505] = 26
                    mem[_1505 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1571 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1571 + idx + 68] = mem[_1505 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1571 + 68] = mem[_1571 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1571 + -mem[64] + 100
                require block.number - startBlock
                if (block.number * mousePerBlock) - (startBlock * mousePerBlock) / block.number - startBlock != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * mousePerBlock) - (startBlock * mousePerBlock):
                    _1196 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1196] = 26
                    mem[_1196 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1233 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1233 + idx + 68] = mem[_1196 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1233 + 68] = mem[_1233 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1233 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1504] = 26
                        mem[_1504 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1568 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1568 + idx + 68] = mem[_1504 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1568 + 68] = mem[_1568 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1568 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1567 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1567] = 26
                    mem[_1567 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1631 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1631 + idx + 68] = mem[_1567 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1631 + 68] = mem[_1631 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1631 + -mem[64] + 100
                require (block.number * mousePerBlock) - (startBlock * mousePerBlock)
                if (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1232] = 26
                mem[_1232 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1296 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1296 + idx + 68] = mem[_1232 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1296 + 68] = mem[_1296 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1296 + -mem[64] + 100
                require totalAllocPoint
                if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1566 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1566] = 26
                    mem[_1566 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1628 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1628 + idx + 68] = mem[_1566 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1628 + 68] = mem[_1628 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1628 + -mem[64] + 100
                require (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1627] = 26
                mem[_1627 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1716 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1716 + idx + 68] = mem[_1627 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1716 + 68] = mem[_1716 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1716 + -mem[64] + 100
            if poolInfo[idx].field_512 >= endBlock:
                _1071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1071] = 26
                mem[_1071 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1094 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1094 + idx + 68] = mem[_1071 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1094 + 68] = mem[_1094 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1094 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1175] = 26
                    mem[_1175 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1213 + idx + 68] = mem[_1175 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1213 + 68] = mem[_1213 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1213 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1212 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1212] = 26
                mem[_1212 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1251 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1251 + idx + 68] = mem[_1212 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1251 + 68] = mem[_1251 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1251 + -mem[64] + 100
            if poolInfo[idx].field_512 > startBlock:
                _1039 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1039] = 30
                mem[_1039 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > endBlock:
                    _1047 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1047 + idx + 68] = mem[_1039 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1047 + 68] = mem[_1047 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1047 + -mem[64] + 100
                if not endBlock - poolInfo[idx].field_512:
                    _1173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1173] = 26
                    mem[_1173 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1205 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1205 + idx + 68] = mem[_1173 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1205 + 68] = mem[_1205 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1205 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1445 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1445] = 26
                        mem[_1445 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1511 + idx + 68] = mem[_1445 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1511 + 68] = mem[_1511 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1511 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1510] = 26
                    mem[_1510 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1580 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1580 + idx + 68] = mem[_1510 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1580 + 68] = mem[_1580 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1580 + -mem[64] + 100
                require endBlock - poolInfo[idx].field_512
                if (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / endBlock - poolInfo[idx].field_512 != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                    _1204 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1204] = 26
                    mem[_1204 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1242 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1242 + idx + 68] = mem[_1204 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1242 + 68] = mem[_1242 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1242 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1509] = 26
                        mem[_1509 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1577 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1577 + idx + 68] = mem[_1509 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1577 + 68] = mem[_1577 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1577 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1576 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1576] = 26
                    mem[_1576 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1641 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1641 + idx + 68] = mem[_1576 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1641 + 68] = mem[_1641 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1641 + -mem[64] + 100
                require (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1241] = 26
                mem[_1241 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1303 + idx + 68] = mem[_1241 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1303 + 68] = mem[_1303 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1303 + -mem[64] + 100
                require totalAllocPoint
                if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1575 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1575] = 26
                    mem[_1575 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1638 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1638 + idx + 68] = mem[_1575 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1638 + 68] = mem[_1638 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1638 + -mem[64] + 100
                require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1637] = 26
                mem[_1637 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1723 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1723 + idx + 68] = mem[_1637 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1723 + 68] = mem[_1723 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1723 + -mem[64] + 100
            _1040 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1040] = 30
            mem[_1040 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > endBlock:
                _1050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1050 + idx + 68] = mem[_1040 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1050 + 68] = mem[_1050 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1050 + -mem[64] + 100
            if not endBlock - startBlock:
                _1174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1174] = 26
                mem[_1174 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1209 + idx + 68] = mem[_1174 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1209 + 68] = mem[_1209 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1209 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1447 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1447] = 26
                    mem[_1447 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1516 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1516 + idx + 68] = mem[_1447 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1516 + 68] = mem[_1516 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1516 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1515 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1515] = 26
                mem[_1515 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1589 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1589 + idx + 68] = mem[_1515 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1589 + 68] = mem[_1589 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1589 + -mem[64] + 100
            require endBlock - startBlock
            if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (endBlock * mousePerBlock) - (startBlock * mousePerBlock):
                _1208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1208] = 26
                mem[_1208 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1247 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1247 + idx + 68] = mem[_1208 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1247 + 68] = mem[_1247 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1247 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1514] = 26
                    mem[_1514 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1586 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1586 + idx + 68] = mem[_1514 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1586 + 68] = mem[_1586 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1586 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1585 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1585] = 26
                mem[_1585 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1651 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1651 + idx + 68] = mem[_1585 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1651 + 68] = mem[_1651 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1651 + -mem[64] + 100
            require (endBlock * mousePerBlock) - (startBlock * mousePerBlock)
            if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1246] = 26
            mem[_1246 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1308 + idx + 68] = mem[_1246 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1308 + 68] = mem[_1308 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1308 + -mem[64] + 100
            require totalAllocPoint
            if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1584 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1584] = 26
                mem[_1584 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1648 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1648 + idx + 68] = mem[_1584 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1648 + 68] = mem[_1648 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1648 + -mem[64] + 100
            require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1647 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1647] = 26
            mem[_1647 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1730 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1730 + idx + 68] = mem[_1647 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1730 + 68] = mem[_1730 + 74 len 26]
            revert with memory
              from mem[64]
               len _1730 + -mem[64] + 100
        poolInfo[idx].field_1040 = 1
        if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += poolInfo[idx].field_256
        if totalAllocPoint <= 0:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if poolInfo[idx].field_512 >= block.number:
            _1098 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1098] = 26
            mem[_1098 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1126 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1126 + idx + 68] = mem[_1098 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1126 + 68] = mem[_1126 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1126 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _1220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1220] = 26
                mem[_1220 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1264 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1264 + idx + 68] = mem[_1220 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1264 + 68] = mem[_1264 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1264 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1263] = 26
            mem[_1263 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1340 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1340 + idx + 68] = mem[_1263 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1340 + 68] = mem[_1340 + 74 len 26]
            revert with memory
              from mem[64]
               len _1340 + -mem[64] + 100
        if block.number < endBlock:
            if block.number <= startBlock:
                _1120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1120] = 26
                mem[_1120 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1139 + idx + 68] = mem[_1120 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1139 + 68] = mem[_1139 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1139 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1259] = 26
                    mem[_1259 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1325 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1325 + idx + 68] = mem[_1259 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1325 + 68] = mem[_1325 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1325 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1324] = 26
                mem[_1324 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1384 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1384 + idx + 68] = mem[_1324 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1384 + 68] = mem[_1384 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1384 + -mem[64] + 100
            if poolInfo[idx].field_512 > startBlock:
                _1058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1058] = 30
                mem[_1058 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _1079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1079 + idx + 68] = mem[_1058 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1079 + 68] = mem[_1079 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1079 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _1257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1257] = 26
                    mem[_1257 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1317 + idx + 68] = mem[_1257 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1317 + 68] = mem[_1317 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1317 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1594] = 26
                        mem[_1594 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1659 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1659 + idx + 68] = mem[_1594 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1659 + 68] = mem[_1659 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1659 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1658] = 26
                    mem[_1658 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1742 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1742 + idx + 68] = mem[_1658 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1742 + 68] = mem[_1742 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1742 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / block.number - poolInfo[idx].field_512 != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                    _1316 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1316] = 26
                    mem[_1316 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _1375 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1375 + idx + 68] = mem[_1316 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1375 + 68] = mem[_1375 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1375 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _1657 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1657] = 26
                        mem[_1657 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1739 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1739 + idx + 68] = mem[_1657 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1739 + 68] = mem[_1739 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1739 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1738] = 26
                    mem[_1738 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1829 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1829 + idx + 68] = mem[_1738 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1829 + 68] = mem[_1829 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1829 + -mem[64] + 100
                require (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                if (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1374] = 26
                mem[_1374 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1448 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1448 + idx + 68] = mem[_1374 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1448 + 68] = mem[_1448 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1448 + -mem[64] + 100
                require totalAllocPoint
                if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1737 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1737] = 26
                    mem[_1737 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1826 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1826 + idx + 68] = mem[_1737 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1826 + 68] = mem[_1826 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1826 + -mem[64] + 100
                require (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1825 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1825] = 26
                mem[_1825 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1917 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1917 + idx + 68] = mem[_1825 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1917 + 68] = mem[_1917 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1917 + -mem[64] + 100
            _1059 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1059] = 30
            mem[_1059 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > block.number:
                _1082 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1082 + idx + 68] = mem[_1059 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1082 + 68] = mem[_1082 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1082 + -mem[64] + 100
            if not block.number - startBlock:
                _1258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1258] = 26
                mem[_1258 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1321 + idx + 68] = mem[_1258 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1321 + 68] = mem[_1321 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1321 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1596] = 26
                    mem[_1596 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1664 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1664 + idx + 68] = mem[_1596 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1664 + 68] = mem[_1664 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1664 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1663 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1663] = 26
                mem[_1663 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1751 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1751 + idx + 68] = mem[_1663 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1751 + 68] = mem[_1751 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1751 + -mem[64] + 100
            require block.number - startBlock
            if (block.number * mousePerBlock) - (startBlock * mousePerBlock) / block.number - startBlock != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * mousePerBlock) - (startBlock * mousePerBlock):
                _1320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1320] = 26
                mem[_1320 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1380 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1380 + idx + 68] = mem[_1320 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1380 + 68] = mem[_1380 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1380 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1662] = 26
                    mem[_1662 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1748 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1748 + idx + 68] = mem[_1662 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1748 + 68] = mem[_1748 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1748 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1747 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1747] = 26
                mem[_1747 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1839 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1839 + idx + 68] = mem[_1747 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1839 + 68] = mem[_1839 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1839 + -mem[64] + 100
            require (block.number * mousePerBlock) - (startBlock * mousePerBlock)
            if (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1379 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1379] = 26
            mem[_1379 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1453 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1453 + idx + 68] = mem[_1379 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1453 + 68] = mem[_1453 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1453 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1746] = 26
                mem[_1746 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1836 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1836 + idx + 68] = mem[_1746 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1836 + 68] = mem[_1836 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1836 + -mem[64] + 100
            require (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1835 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1835] = 26
            mem[_1835 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1924 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1924 + idx + 68] = mem[_1835 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1924 + 68] = mem[_1924 + 74 len 26]
            revert with memory
              from mem[64]
               len _1924 + -mem[64] + 100
        if poolInfo[idx].field_512 >= endBlock:
            _1125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1125] = 26
            mem[_1125 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1142 + idx + 68] = mem[_1125 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1142 + 68] = mem[_1142 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1142 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _1262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1262] = 26
                mem[_1262 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1337 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1337 + idx + 68] = mem[_1262 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1337 + 68] = mem[_1337 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1337 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1336] = 26
            mem[_1336 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1398 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1398 + idx + 68] = mem[_1336 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1398 + 68] = mem[_1398 + 74 len 26]
            revert with memory
              from mem[64]
               len _1398 + -mem[64] + 100
        if poolInfo[idx].field_512 > startBlock:
            _1060 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1060] = 30
            mem[_1060 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > endBlock:
                _1085 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1085 + idx + 68] = mem[_1060 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1085 + 68] = mem[_1085 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1085 + -mem[64] + 100
            if not endBlock - poolInfo[idx].field_512:
                _1260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1260] = 26
                mem[_1260 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1329 + idx + 68] = mem[_1260 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1329 + 68] = mem[_1329 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1329 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1598] = 26
                    mem[_1598 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1669 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1669 + idx + 68] = mem[_1598 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1669 + 68] = mem[_1669 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1669 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1668] = 26
                mem[_1668 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1760 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1760 + idx + 68] = mem[_1668 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1760 + 68] = mem[_1760 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1760 + -mem[64] + 100
            require endBlock - poolInfo[idx].field_512
            if (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / endBlock - poolInfo[idx].field_512 != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                _1328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1328] = 26
                mem[_1328 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _1389 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1389 + idx + 68] = mem[_1328 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1389 + 68] = mem[_1389 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1389 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _1667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1667] = 26
                    mem[_1667 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1757 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1757 + idx + 68] = mem[_1667 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1757 + 68] = mem[_1757 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1757 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1756] = 26
                mem[_1756 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1849 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1849 + idx + 68] = mem[_1756 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1849 + 68] = mem[_1849 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1849 + -mem[64] + 100
            require (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
            if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1388 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1388] = 26
            mem[_1388 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1460 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1460 + idx + 68] = mem[_1388 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1460 + 68] = mem[_1460 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1460 + -mem[64] + 100
            require totalAllocPoint
            if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1755] = 26
                mem[_1755 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1846 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1846 + idx + 68] = mem[_1755 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1846 + 68] = mem[_1846 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1846 + -mem[64] + 100
            require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1845 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1845] = 26
            mem[_1845 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1931 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1931 + idx + 68] = mem[_1845 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1931 + 68] = mem[_1931 + 74 len 26]
            revert with memory
              from mem[64]
               len _1931 + -mem[64] + 100
        _1061 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1061] = 30
        mem[_1061 + 32] = 'SafeMath: subtraction overflow'
        if startBlock > endBlock:
            _1088 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1088 + idx + 68] = mem[_1061 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1088 + 68] = mem[_1088 + 70 len 30]
            revert with memory
              from mem[64]
               len _1088 + -mem[64] + 100
        if not endBlock - startBlock:
            _1261 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1261] = 26
            mem[_1261 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1333 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1333 + idx + 68] = mem[_1261 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1333 + 68] = mem[_1333 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1333 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _1600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1600] = 26
                mem[_1600 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1674 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1674 + idx + 68] = mem[_1600 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1674 + 68] = mem[_1674 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1674 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1673 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1673] = 26
            mem[_1673 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1769 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1769 + idx + 68] = mem[_1673 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1769 + 68] = mem[_1769 + 74 len 26]
            revert with memory
              from mem[64]
               len _1769 + -mem[64] + 100
        require endBlock - startBlock
        if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (endBlock * mousePerBlock) - (startBlock * mousePerBlock):
            _1332 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1332] = 26
            mem[_1332 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _1394 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1394 + idx + 68] = mem[_1332 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1394 + 68] = mem[_1394 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1394 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _1672 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1672] = 26
                mem[_1672 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1766 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1766 + idx + 68] = mem[_1672 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1766 + 68] = mem[_1766 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1766 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1765 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1765] = 26
            mem[_1765 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1859 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1859 + idx + 68] = mem[_1765 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1859 + 68] = mem[_1859 + 74 len 26]
            revert with memory
              from mem[64]
               len _1859 + -mem[64] + 100
        require (endBlock * mousePerBlock) - (startBlock * mousePerBlock)
        if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1393 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1393] = 26
        mem[_1393 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _1465 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1465 + idx + 68] = mem[_1393 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1465 + 68] = mem[_1465 + 74 len 26]
            revert with memory
              from mem[64]
               len _1465 + -mem[64] + 100
        require totalAllocPoint
        if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _1764 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1764] = 26
            mem[_1764 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1856 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1856 + idx + 68] = mem[_1764 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1856 + 68] = mem[_1856 + 74 len 26]
            revert with memory
              from mem[64]
               len _1856 + -mem[64] + 100
        require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1855 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1855] = 26
        mem[_1855 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1938 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_1938 + idx + 68] = mem[_1855 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1938 + 68] = mem[_1938 + 74 len 26]
        revert with memory
          from mem[64]
           len _1938 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1040:
        if poolInfo[arg1].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function sub_fab96ae6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x735368617265526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[207 len 21]
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'ShareRewardPool: existing pool?'
        idx = idx + 1
        continue 
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_1040:
                if totalAllocPoint <= 0:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                if poolInfo[idx].field_512 >= block.number:
                    _2640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2640] = 26
                    mem[_2640 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2659 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2659 + idx + 68] = mem[_2640 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2659 + 68] = mem[_2659 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2659 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _2745 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2745] = 26
                        mem[_2745 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2764 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2764 + idx + 68] = mem[_2745 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2764 + 68] = mem[_2764 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2764 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2763 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2763] = 26
                    mem[_2763 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2803 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2803 + idx + 68] = mem[_2763 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2803 + 68] = mem[_2803 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2803 + -mem[64] + 100
                if block.number < endBlock:
                    if block.number <= startBlock:
                        _2653 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2653] = 26
                        mem[_2653 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _2678 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2678 + idx + 68] = mem[_2653 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2678 + 68] = mem[_2678 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2678 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _2759 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2759] = 26
                            mem[_2759 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _2788 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2788 + idx + 68] = mem[_2759 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2788 + 68] = mem[_2788 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2788 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2787 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2787] = 26
                        mem[_2787 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2824 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2824 + idx + 68] = mem[_2787 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2824 + 68] = mem[_2824 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2824 + -mem[64] + 100
                    if poolInfo[idx].field_512 > startBlock:
                        _2624 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2624] = 30
                        mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > block.number:
                            _2628 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2628 + idx + 68] = mem[_2624 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2628 + 68] = mem[_2628 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2628 + -mem[64] + 100
                        if not block.number - poolInfo[idx].field_512:
                            _2757 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2757] = 26
                            mem[_2757 + 32] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                _2780 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2780 + idx + 68] = mem[_2757 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2780 + 68] = mem[_2780 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _2780 + -mem[64] + 100
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                _3028 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3028] = 26
                                mem[_3028 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] > 0:
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _3088 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_3088 + idx + 68] = mem[_3028 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3088 + 68] = mem[_3088 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _3088 + -mem[64] + 100
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3087 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3087] = 26
                            mem[_3087 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3149 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3149 + idx + 68] = mem[_3087 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3149 + 68] = mem[_3149 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3149 + -mem[64] + 100
                        require block.number - poolInfo[idx].field_512
                        if (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / block.number - poolInfo[idx].field_512 != mousePerBlock:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                            _2779 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2779] = 26
                            mem[_2779 + 32] = 'SafeMath: division by zero'
                            if totalAllocPoint <= 0:
                                _2815 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_2815 + idx + 68] = mem[_2779 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2815 + 68] = mem[_2815 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _2815 + -mem[64] + 100
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                _3086 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3086] = 26
                                mem[_3086 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] > 0:
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                _3146 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_3146 + idx + 68] = mem[_3086 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3146 + 68] = mem[_3146 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _3146 + -mem[64] + 100
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3145] = 26
                            mem[_3145 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3208 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3208 + idx + 68] = mem[_3145 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3208 + 68] = mem[_3208 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3208 + -mem[64] + 100
                        require (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                        if (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2814 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2814] = 26
                        mem[_2814 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _2878 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2878 + idx + 68] = mem[_2814 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2878 + 68] = mem[_2878 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2878 + -mem[64] + 100
                        require totalAllocPoint
                        if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _3144 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3144] = 26
                            mem[_3144 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3205 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3205 + idx + 68] = mem[_3144 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3205 + 68] = mem[_3205 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3205 + -mem[64] + 100
                        require (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3204 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3204] = 26
                        mem[_3204 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3296 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3296 + idx + 68] = mem[_3204 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3296 + 68] = mem[_3296 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3296 + -mem[64] + 100
                    _2625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2625] = 30
                    mem[_2625 + 32] = 'SafeMath: subtraction overflow'
                    if startBlock > block.number:
                        _2631 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2631 + idx + 68] = mem[_2625 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2631 + 68] = mem[_2631 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2631 + -mem[64] + 100
                    if not block.number - startBlock:
                        _2758 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2758] = 26
                        mem[_2758 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _2784 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2784 + idx + 68] = mem[_2758 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2784 + 68] = mem[_2784 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2784 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _3030 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3030] = 26
                            mem[_3030 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3093 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3093 + idx + 68] = mem[_3030 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3093 + 68] = mem[_3093 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3093 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3092 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3092] = 26
                        mem[_3092 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3158 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3158 + idx + 68] = mem[_3092 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3158 + 68] = mem[_3158 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3158 + -mem[64] + 100
                    require block.number - startBlock
                    if (block.number * mousePerBlock) - (startBlock * mousePerBlock) / block.number - startBlock != mousePerBlock:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * mousePerBlock) - (startBlock * mousePerBlock):
                        _2783 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2783] = 26
                        mem[_2783 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _2820 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2820 + idx + 68] = mem[_2783 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2820 + 68] = mem[_2820 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2820 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _3091 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3091] = 26
                            mem[_3091 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3155 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3155 + idx + 68] = mem[_3091 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3155 + 68] = mem[_3155 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3155 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3154] = 26
                        mem[_3154 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3218 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3218 + idx + 68] = mem[_3154 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3218 + 68] = mem[_3218 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3218 + -mem[64] + 100
                    require (block.number * mousePerBlock) - (startBlock * mousePerBlock)
                    if (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2819] = 26
                    mem[_2819 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2883 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2883 + idx + 68] = mem[_2819 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2883 + 68] = mem[_2883 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2883 + -mem[64] + 100
                    require totalAllocPoint
                    if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _3153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3153] = 26
                        mem[_3153 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3215 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3215 + idx + 68] = mem[_3153 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3215 + 68] = mem[_3215 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3215 + -mem[64] + 100
                    require (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3214] = 26
                    mem[_3214 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3303 + idx + 68] = mem[_3214 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3303 + 68] = mem[_3303 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3303 + -mem[64] + 100
                if poolInfo[idx].field_512 >= endBlock:
                    _2658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2658] = 26
                    mem[_2658 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2681 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2681 + idx + 68] = mem[_2658 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2681 + 68] = mem[_2681 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2681 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _2762 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2762] = 26
                        mem[_2762 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2800 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2800 + idx + 68] = mem[_2762 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2800 + 68] = mem[_2800 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2800 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2799 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2799] = 26
                    mem[_2799 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2838 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2838 + idx + 68] = mem[_2799 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2838 + 68] = mem[_2838 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2838 + -mem[64] + 100
                if poolInfo[idx].field_512 > startBlock:
                    _2626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2626] = 30
                    mem[_2626 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > endBlock:
                        _2634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2634 + idx + 68] = mem[_2626 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2634 + 68] = mem[_2634 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2634 + -mem[64] + 100
                    if not endBlock - poolInfo[idx].field_512:
                        _2760 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2760] = 26
                        mem[_2760 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _2792 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2792 + idx + 68] = mem[_2760 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2792 + 68] = mem[_2792 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2792 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _3032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3032] = 26
                            mem[_3032 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3098 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3098 + idx + 68] = mem[_3032 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3098 + 68] = mem[_3098 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3098 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3097 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3097] = 26
                        mem[_3097 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3167 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3167 + idx + 68] = mem[_3097 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3167 + 68] = mem[_3167 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3167 + -mem[64] + 100
                    require endBlock - poolInfo[idx].field_512
                    if (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / endBlock - poolInfo[idx].field_512 != mousePerBlock:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                        _2791 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2791] = 26
                        mem[_2791 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _2829 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2829 + idx + 68] = mem[_2791 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2829 + 68] = mem[_2829 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2829 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _3096 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3096] = 26
                            mem[_3096 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3164 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3164 + idx + 68] = mem[_3096 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3164 + 68] = mem[_3164 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3164 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3163 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3163] = 26
                        mem[_3163 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3228 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3228 + idx + 68] = mem[_3163 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3228 + 68] = mem[_3228 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3228 + -mem[64] + 100
                    require (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                    if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2828] = 26
                    mem[_2828 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2890 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2890 + idx + 68] = mem[_2828 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2890 + 68] = mem[_2890 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2890 + -mem[64] + 100
                    require totalAllocPoint
                    if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _3162 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3162] = 26
                        mem[_3162 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3225 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3225 + idx + 68] = mem[_3162 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3225 + 68] = mem[_3225 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3225 + -mem[64] + 100
                    require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3224] = 26
                    mem[_3224 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3310 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3310 + idx + 68] = mem[_3224 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3310 + 68] = mem[_3310 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3310 + -mem[64] + 100
                _2627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2627] = 30
                mem[_2627 + 32] = 'SafeMath: subtraction overflow'
                if startBlock > endBlock:
                    _2637 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2637 + idx + 68] = mem[_2627 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2637 + 68] = mem[_2637 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2637 + -mem[64] + 100
                if not endBlock - startBlock:
                    _2761 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2761] = 26
                    mem[_2761 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2796 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2796 + idx + 68] = mem[_2761 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2796 + 68] = mem[_2796 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2796 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _3034 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3034] = 26
                        mem[_3034 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3103 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3103 + idx + 68] = mem[_3034 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3103 + 68] = mem[_3103 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3103 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3102] = 26
                    mem[_3102 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3176 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3176 + idx + 68] = mem[_3102 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3176 + 68] = mem[_3176 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3176 + -mem[64] + 100
                require endBlock - startBlock
                if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (endBlock * mousePerBlock) - (startBlock * mousePerBlock):
                    _2795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2795] = 26
                    mem[_2795 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2834 + idx + 68] = mem[_2795 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2834 + 68] = mem[_2834 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2834 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _3101 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3101] = 26
                        mem[_3101 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3173 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3173 + idx + 68] = mem[_3101 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3173 + 68] = mem[_3173 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3173 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3172] = 26
                    mem[_3172 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3238 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3238 + idx + 68] = mem[_3172 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3238 + 68] = mem[_3238 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3238 + -mem[64] + 100
                require (endBlock * mousePerBlock) - (startBlock * mousePerBlock)
                if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2833] = 26
                mem[_2833 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _2895 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2895 + idx + 68] = mem[_2833 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2895 + 68] = mem[_2895 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2895 + -mem[64] + 100
                require totalAllocPoint
                if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3171] = 26
                    mem[_3171 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3235 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3235 + idx + 68] = mem[_3171 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3235 + 68] = mem[_3235 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3235 + -mem[64] + 100
                require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3234] = 26
                mem[_3234 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3317 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3317 + idx + 68] = mem[_3234 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3317 + 68] = mem[_3317 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3317 + -mem[64] + 100
            poolInfo[idx].field_1040 = 1
            if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                revert with 0, 'SafeMath: addition overflow'
            totalAllocPoint += poolInfo[idx].field_256
            if totalAllocPoint <= 0:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.number:
                _2685 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2685] = 26
                mem[_2685 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _2713 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2713 + idx + 68] = mem[_2685 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2713 + 68] = mem[_2713 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2713 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _2807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2807] = 26
                    mem[_2807 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2851 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2851 + idx + 68] = mem[_2807 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2851 + 68] = mem[_2851 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2851 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2850 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2850] = 26
                mem[_2850 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2927 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2927 + idx + 68] = mem[_2850 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2927 + 68] = mem[_2927 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2927 + -mem[64] + 100
            if block.number < endBlock:
                if block.number <= startBlock:
                    _2707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2707] = 26
                    mem[_2707 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2726 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2726 + idx + 68] = mem[_2707 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2726 + 68] = mem[_2726 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2726 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _2846 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2846] = 26
                        mem[_2846 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _2912 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2912 + idx + 68] = mem[_2846 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2912 + 68] = mem[_2912 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2912 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2911 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2911] = 26
                    mem[_2911 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2971 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2971 + idx + 68] = mem[_2911 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2971 + 68] = mem[_2971 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2971 + -mem[64] + 100
                if poolInfo[idx].field_512 > startBlock:
                    _2645 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2645] = 30
                    mem[_2645 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_512 > block.number:
                        _2666 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2666 + idx + 68] = mem[_2645 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2666 + 68] = mem[_2666 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2666 + -mem[64] + 100
                    if not block.number - poolInfo[idx].field_512:
                        _2844 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2844] = 26
                        mem[_2844 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _2904 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2904 + idx + 68] = mem[_2844 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2904 + 68] = mem[_2904 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2904 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _3181 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3181] = 26
                            mem[_3181 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3246 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3246 + idx + 68] = mem[_3181 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3246 + 68] = mem[_3246 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3246 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3245] = 26
                        mem[_3245 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3329 + idx + 68] = mem[_3245 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3329 + 68] = mem[_3329 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3329 + -mem[64] + 100
                    require block.number - poolInfo[idx].field_512
                    if (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / block.number - poolInfo[idx].field_512 != mousePerBlock:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                        _2903 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2903] = 26
                        mem[_2903 + 32] = 'SafeMath: division by zero'
                        if totalAllocPoint <= 0:
                            _2962 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2962 + idx + 68] = mem[_2903 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2962 + 68] = mem[_2962 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2962 + -mem[64] + 100
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            _3244 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3244] = 26
                            mem[_3244 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] > 0:
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _3326 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3326 + idx + 68] = mem[_3244 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3326 + 68] = mem[_3326 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3326 + -mem[64] + 100
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3325] = 26
                        mem[_3325 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3416 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3416 + idx + 68] = mem[_3325 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3416 + 68] = mem[_3416 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3416 + -mem[64] + 100
                    require (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                    if (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2961 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2961] = 26
                    mem[_2961 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _3035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3035 + idx + 68] = mem[_2961 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3035 + 68] = mem[_3035 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3035 + -mem[64] + 100
                    require totalAllocPoint
                    if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _3324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3324] = 26
                        mem[_3324 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3413 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3413 + idx + 68] = mem[_3324 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3413 + 68] = mem[_3413 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3413 + -mem[64] + 100
                    require (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3412 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3412] = 26
                    mem[_3412 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3504 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3504 + idx + 68] = mem[_3412 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3504 + 68] = mem[_3504 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3504 + -mem[64] + 100
                _2646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2646] = 30
                mem[_2646 + 32] = 'SafeMath: subtraction overflow'
                if startBlock > block.number:
                    _2669 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2669 + idx + 68] = mem[_2646 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2669 + 68] = mem[_2669 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2669 + -mem[64] + 100
                if not block.number - startBlock:
                    _2845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2845] = 26
                    mem[_2845 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2908 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2908 + idx + 68] = mem[_2845 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2908 + 68] = mem[_2908 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2908 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _3183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3183] = 26
                        mem[_3183 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3251 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3251 + idx + 68] = mem[_3183 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3251 + 68] = mem[_3251 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3251 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3250 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3250] = 26
                    mem[_3250 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3338 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3338 + idx + 68] = mem[_3250 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3338 + 68] = mem[_3338 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3338 + -mem[64] + 100
                require block.number - startBlock
                if (block.number * mousePerBlock) - (startBlock * mousePerBlock) / block.number - startBlock != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * mousePerBlock) - (startBlock * mousePerBlock):
                    _2907 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2907] = 26
                    mem[_2907 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2967 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2967 + idx + 68] = mem[_2907 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2967 + 68] = mem[_2967 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2967 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _3249 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3249] = 26
                        mem[_3249 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3335 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3335 + idx + 68] = mem[_3249 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3335 + 68] = mem[_3335 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3335 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3334] = 26
                    mem[_3334 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3426 + idx + 68] = mem[_3334 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3426 + 68] = mem[_3426 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3426 + -mem[64] + 100
                require (block.number * mousePerBlock) - (startBlock * mousePerBlock)
                if (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (block.number * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2966 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2966] = 26
                mem[_2966 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _3040 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3040 + idx + 68] = mem[_2966 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3040 + 68] = mem[_3040 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3040 + -mem[64] + 100
                require totalAllocPoint
                if not (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3333] = 26
                    mem[_3333 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3423 + idx + 68] = mem[_3333 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3423 + 68] = mem[_3423 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3423 + -mem[64] + 100
                require (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3422] = 26
                mem[_3422 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3511 + idx + 68] = mem[_3422 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3511 + 68] = mem[_3511 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3511 + -mem[64] + 100
            if poolInfo[idx].field_512 >= endBlock:
                _2712 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2712] = 26
                mem[_2712 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _2729 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2729 + idx + 68] = mem[_2712 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2729 + 68] = mem[_2729 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2729 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _2849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2849] = 26
                    mem[_2849 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _2924 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2924 + idx + 68] = mem[_2849 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2924 + 68] = mem[_2924 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2924 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2923 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2923] = 26
                mem[_2923 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _2985 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2985 + idx + 68] = mem[_2923 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2985 + 68] = mem[_2985 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2985 + -mem[64] + 100
            if poolInfo[idx].field_512 > startBlock:
                _2647 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2647] = 30
                mem[_2647 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > endBlock:
                    _2672 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2672 + idx + 68] = mem[_2647 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2672 + 68] = mem[_2672 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2672 + -mem[64] + 100
                if not endBlock - poolInfo[idx].field_512:
                    _2847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2847] = 26
                    mem[_2847 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2916 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2916 + idx + 68] = mem[_2847 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2916 + 68] = mem[_2916 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2916 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _3185 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3185] = 26
                        mem[_3185 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3256 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3256 + idx + 68] = mem[_3185 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3256 + 68] = mem[_3256 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3256 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3255] = 26
                    mem[_3255 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3347 + idx + 68] = mem[_3255 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3347 + 68] = mem[_3347 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3347 + -mem[64] + 100
                require endBlock - poolInfo[idx].field_512
                if (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) / endBlock - poolInfo[idx].field_512 != mousePerBlock:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock):
                    _2915 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2915] = 26
                    mem[_2915 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _2976 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2976 + idx + 68] = mem[_2915 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2976 + 68] = mem[_2976 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2976 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _3254 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3254] = 26
                        mem[_3254 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _3344 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3344 + idx + 68] = mem[_3254 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3344 + 68] = mem[_3344 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _3344 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3343] = 26
                    mem[_3343 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3436 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3436 + idx + 68] = mem[_3343 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3436 + 68] = mem[_3436 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3436 + -mem[64] + 100
                require (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock)
                if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (poolInfo[idx].field_512 * mousePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2975 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2975] = 26
                mem[_2975 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _3047 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3047 + idx + 68] = mem[_2975 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3047 + 68] = mem[_3047 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3047 + -mem[64] + 100
                require totalAllocPoint
                if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _3342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3342] = 26
                    mem[_3342 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3433 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3433 + idx + 68] = mem[_3342 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3433 + 68] = mem[_3433 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3433 + -mem[64] + 100
                require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3432 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3432] = 26
                mem[_3432 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3518 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3518 + idx + 68] = mem[_3432 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3518 + 68] = mem[_3518 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3518 + -mem[64] + 100
            _2648 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2648] = 30
            mem[_2648 + 32] = 'SafeMath: subtraction overflow'
            if startBlock > endBlock:
                _2675 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2675 + idx + 68] = mem[_2648 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2675 + 68] = mem[_2675 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2675 + -mem[64] + 100
            if not endBlock - startBlock:
                _2848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2848] = 26
                mem[_2848 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _2920 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2920 + idx + 68] = mem[_2848 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2920 + 68] = mem[_2920 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2920 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _3187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3187] = 26
                    mem[_3187 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3261 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3261 + idx + 68] = mem[_3187 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3261 + 68] = mem[_3261 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3261 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3260] = 26
                mem[_3260 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3356 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3356 + idx + 68] = mem[_3260 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3356 + 68] = mem[_3356 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3356 + -mem[64] + 100
            require endBlock - startBlock
            if (endBlock * mousePerBlock) - (startBlock * mousePerBlock) / endBlock - startBlock != mousePerBlock:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (endBlock * mousePerBlock) - (startBlock * mousePerBlock):
                _2919 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2919] = 26
                mem[_2919 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _2981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2981 + idx + 68] = mem[_2919 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2981 + 68] = mem[_2981 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2981 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _3259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3259] = 26
                    mem[_3259 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _3353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3353 + idx + 68] = mem[_3259 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3353 + 68] = mem[_3353 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _3353 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3352 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3352] = 26
                mem[_3352 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3446 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3446 + idx + 68] = mem[_3352 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3446 + 68] = mem[_3446 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3446 + -mem[64] + 100
            require (endBlock * mousePerBlock) - (startBlock * mousePerBlock)
            if (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / (endBlock * mousePerBlock) - (startBlock * mousePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2980 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2980] = 26
            mem[_2980 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _3052 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3052 + idx + 68] = mem[_2980 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3052 + 68] = mem[_3052 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3052 + -mem[64] + 100
            require totalAllocPoint
            if not (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _3351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3351] = 26
                mem[_3351 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _3443 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3443 + idx + 68] = mem[_3351 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3443 + 68] = mem[_3443 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _3443 + -mem[64] + 100
            require (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3442 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3442] = 26
            mem[_3442 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (endBlock * mousePerBlock * poolInfo[idx].field_256) - (startBlock * mousePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _3525 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_3525 + idx + 68] = mem[_3442 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3525 + 68] = mem[_3525 + 74 len 26]
            revert with memory
              from mem[64]
               len _3525 + -mem[64] + 100
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number >= startBlock:
        if not arg5:
            poolInfo[poolInfo.length].field_512 = block.number
            poolInfo[poolInfo.length].field_768 = 0
            poolInfo[poolInfo.length].field_1024 = arg3
            if block.number <= startBlock:
                poolInfo[poolInfo.length].field_1040 = Mask(240, 0, block.number <= startBlock)
                if totalAllocPoint + arg1 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1040 = Mask(240, 0, block.number <= block.number)
                if block.number <= block.number:
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg5 >= block.number:
                poolInfo[poolInfo.length].field_512 = arg5
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = arg3
                if arg5 <= startBlock:
                    poolInfo[poolInfo.length].field_1040 = Mask(240, 0, arg5 <= startBlock)
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1040 = Mask(240, 0, arg5 <= block.number)
                    if arg5 <= block.number:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_512 = block.number
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = arg3
                if block.number <= startBlock:
                    poolInfo[poolInfo.length].field_1040 = Mask(240, 0, block.number <= startBlock)
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1040 = Mask(240, 0, block.number <= block.number)
                    if block.number <= block.number:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
    else:
        if not arg5:
            poolInfo[poolInfo.length].field_512 = startBlock
            poolInfo[poolInfo.length].field_768 = 0
            poolInfo[poolInfo.length].field_1024 = arg3
            if startBlock <= startBlock:
                poolInfo[poolInfo.length].field_1040 = Mask(240, 0, startBlock <= startBlock)
                if totalAllocPoint + arg1 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1040 = Mask(240, 0, startBlock <= block.number)
                if startBlock <= block.number:
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg5 >= startBlock:
                poolInfo[poolInfo.length].field_512 = arg5
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = arg3
                if arg5 <= startBlock:
                    poolInfo[poolInfo.length].field_1040 = Mask(240, 0, arg5 <= startBlock)
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1040 = Mask(240, 0, arg5 <= block.number)
                    if arg5 <= block.number:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_512 = startBlock
                poolInfo[poolInfo.length].field_768 = 0
                poolInfo[poolInfo.length].field_1024 = arg3
                if startBlock <= startBlock:
                    poolInfo[poolInfo.length].field_1040 = Mask(240, 0, startBlock <= startBlock)
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1040 = Mask(240, 0, startBlock <= block.number)
                    if startBlock <= block.number:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
}



}
