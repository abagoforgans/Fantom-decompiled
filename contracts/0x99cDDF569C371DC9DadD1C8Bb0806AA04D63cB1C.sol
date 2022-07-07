contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
address syrupAddress;
address rewardTokenAddress;
uint256 rewardPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor6;
uint256 startBlock;
uint256 bonusEndBlock;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function syrup() payable {
    return syrupAddress
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    return (bonusEndBlock - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(poolInfo.field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[address(msg.sender)].field_32
    call address(poolInfo.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[address(msg.sender)].field_0
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_256 = 0
    emit EmergencyWithdraw(userInfo[address(msg.sender)].field_0, msg.sender);
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'not enough token'
    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    else:
                        require (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock)
                        if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6
                            if 10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[arg1].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not 0 / stor6:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / stor6
                                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                        else:
                            require (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock)
                            if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6
                                if 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
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
        if block.number <= bonusEndBlock:
            _245 = mem[64]
            mem[64] = mem[64] + 64
            mem[_245] = 30
            mem[_245 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_247 + idx + 68] = mem[_245 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_270] = 26
                mem[_270 + 32] = 'SafeMath: division by zero'
                if stor6 <= 0:
                    _280 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_280 + idx + 68] = mem[_270 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_280 + 68] = mem[_280 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _280 + -mem[64] + 100
                require stor6
                if not 0 / stor6:
                    _339 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_339] = 26
                    mem[_339 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _352 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_352 + idx + 68] = mem[_339 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_352 + 68] = mem[_352 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _352 + -mem[64] + 100
                require 0 / stor6
                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 26
                mem[_351 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _374 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_374 + idx + 68] = mem[_351 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_374 + 68] = mem[_374 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _374 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                _279 = mem[64]
                mem[64] = mem[64] + 64
                mem[_279] = 26
                mem[_279 + 32] = 'SafeMath: division by zero'
                if stor6 <= 0:
                    _288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_288 + idx + 68] = mem[_279 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_288 + 68] = mem[_288 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _288 + -mem[64] + 100
                require stor6
                if not 0 / stor6:
                    _350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_350] = 26
                    mem[_350 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _371 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_371 + idx + 68] = mem[_350 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_371 + 68] = mem[_371 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _371 + -mem[64] + 100
                require 0 / stor6
                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _370 = mem[64]
                mem[64] = mem[64] + 64
                mem[_370] = 26
                mem[_370 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _397 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_397 + idx + 68] = mem[_370 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_397 + 68] = mem[_397 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _397 + -mem[64] + 100
            require (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock)
            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _287 = mem[64]
            mem[64] = mem[64] + 64
            mem[_287] = 26
            mem[_287 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _304 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_304 + idx + 68] = mem[_287 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_304 + 68] = mem[_304 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _304 + -mem[64] + 100
            require stor6
            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6:
                _369 = mem[64]
                mem[64] = mem[64] + 64
                mem[_369] = 26
                mem[_369 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _394 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_394 + idx + 68] = mem[_369 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_394 + 68] = mem[_394 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _394 + -mem[64] + 100
            require (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6
            if 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_393] = 26
            mem[_393 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _425 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_425 + idx + 68] = mem[_393 + idx + 32]
                idx = idx + 32
                continue 
            mem[_425 + 68] = mem[_425 + 74 len 26]
            revert with memory
              from mem[64]
               len _425 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_265] = 26
            mem[_265 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _266 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_266 + idx + 68] = mem[_265 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_266 + 68] = mem[_266 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _266 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_303] = 26
                mem[_303 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _319 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_319 + idx + 68] = mem[_303 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_319 + 68] = mem[_319 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _319 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _318 = mem[64]
            mem[64] = mem[64] + 64
            mem[_318] = 26
            mem[_318 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _334 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_334 + idx + 68] = mem[_318 + idx + 32]
                idx = idx + 32
                continue 
            mem[_334 + 68] = mem[_334 + 74 len 26]
            revert with memory
              from mem[64]
               len _334 + -mem[64] + 100
        _246 = mem[64]
        mem[64] = mem[64] + 64
        mem[_246] = 30
        mem[_246 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _250 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_250 + idx + 68] = mem[_246 + idx + 32]
                idx = idx + 32
                continue 
            mem[_250 + 68] = mem[_250 + 70 len 30]
            revert with memory
              from mem[64]
               len _250 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _284 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_284 + idx + 68] = mem[_271 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_284 + 68] = mem[_284 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _284 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _341 = mem[64]
                mem[64] = mem[64] + 64
                mem[_341] = 26
                mem[_341 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _357 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_357 + idx + 68] = mem[_341 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_357 + 68] = mem[_357 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _357 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _356 = mem[64]
            mem[64] = mem[64] + 64
            mem[_356] = 26
            mem[_356 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _383 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_383 + idx + 68] = mem[_356 + idx + 32]
                idx = idx + 32
                continue 
            mem[_383 + 68] = mem[_383 + 74 len 26]
            revert with memory
              from mem[64]
               len _383 + -mem[64] + 100
        require bonusEndBlock - poolInfo[idx].field_512
        if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[idx].field_512 != rewardPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 26
            mem[_283 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _293 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_293 + idx + 68] = mem[_283 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_293 + 68] = mem[_293 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _293 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 26
                mem[_355 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _380 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_380 + idx + 68] = mem[_355 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_380 + 68] = mem[_380 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _380 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _379 = mem[64]
            mem[64] = mem[64] + 64
            mem[_379] = 26
            mem[_379 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _407 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_407 + idx + 68] = mem[_379 + idx + 32]
                idx = idx + 32
                continue 
            mem[_407 + 68] = mem[_407 + 74 len 26]
            revert with memory
              from mem[64]
               len _407 + -mem[64] + 100
        require (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock)
        if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _292 = mem[64]
        mem[64] = mem[64] + 64
        mem[_292] = 26
        mem[_292 + 32] = 'SafeMath: division by zero'
        if stor6 <= 0:
            _309 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_309 + idx + 68] = mem[_292 + idx + 32]
                idx = idx + 32
                continue 
            mem[_309 + 68] = mem[_309 + 74 len 26]
            revert with memory
              from mem[64]
               len _309 + -mem[64] + 100
        require stor6
        if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6:
            _378 = mem[64]
            mem[64] = mem[64] + 64
            mem[_378] = 26
            mem[_378 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _404 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_404 + idx + 68] = mem[_378 + idx + 32]
                idx = idx + 32
                continue 
            mem[_404 + 68] = mem[_404 + 74 len 26]
            revert with memory
              from mem[64]
               len _404 + -mem[64] + 100
        require (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6
        if 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _403 = mem[64]
        mem[64] = mem[64] + 64
        mem[_403] = 26
        mem[_403 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _432 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_432 + idx + 68] = mem[_403 + idx + 32]
            idx = idx + 32
            continue 
        mem[_432 + 68] = mem[_432 + 74 len 26]
        revert with memory
          from mem[64]
           len _432 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
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
        if block.number <= bonusEndBlock:
            _251 = mem[64]
            mem[64] = mem[64] + 64
            mem[_251] = 30
            mem[_251 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _253 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_253 + idx + 68] = mem[_251 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_253 + 68] = mem[_253 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _253 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_276] = 26
                mem[_276 + 32] = 'SafeMath: division by zero'
                if stor6 <= 0:
                    _286 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_286 + idx + 68] = mem[_276 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_286 + 68] = mem[_286 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _286 + -mem[64] + 100
                require stor6
                if not 0 / stor6:
                    _345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_345] = 26
                    mem[_345 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _358 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_358 + idx + 68] = mem[_345 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_358 + 68] = mem[_358 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _358 + -mem[64] + 100
                require 0 / stor6
                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _357 = mem[64]
                mem[64] = mem[64] + 64
                mem[_357] = 26
                mem[_357 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _380 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_380 + idx + 68] = mem[_357 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_380 + 68] = mem[_380 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _380 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                _285 = mem[64]
                mem[64] = mem[64] + 64
                mem[_285] = 26
                mem[_285 + 32] = 'SafeMath: division by zero'
                if stor6 <= 0:
                    _294 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_294 + idx + 68] = mem[_285 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_294 + 68] = mem[_294 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _294 + -mem[64] + 100
                require stor6
                if not 0 / stor6:
                    _356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_356] = 26
                    mem[_356 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _377 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_377 + idx + 68] = mem[_356 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_377 + 68] = mem[_377 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _377 + -mem[64] + 100
                require 0 / stor6
                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _376 = mem[64]
                mem[64] = mem[64] + 64
                mem[_376] = 26
                mem[_376 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _403 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_403 + idx + 68] = mem[_376 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_403 + 68] = mem[_403 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _403 + -mem[64] + 100
            require (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock)
            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _293 = mem[64]
            mem[64] = mem[64] + 64
            mem[_293] = 26
            mem[_293 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _310 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_310 + idx + 68] = mem[_293 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_310 + 68] = mem[_310 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _310 + -mem[64] + 100
            require stor6
            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6:
                _375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_375] = 26
                mem[_375 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _400 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_400 + idx + 68] = mem[_375 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_400 + 68] = mem[_400 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _400 + -mem[64] + 100
            require (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6
            if 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _399 = mem[64]
            mem[64] = mem[64] + 64
            mem[_399] = 26
            mem[_399 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _431 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_431 + idx + 68] = mem[_399 + idx + 32]
                idx = idx + 32
                continue 
            mem[_431 + 68] = mem[_431 + 74 len 26]
            revert with memory
              from mem[64]
               len _431 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _272 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_272 + idx + 68] = mem[_271 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_272 + 68] = mem[_272 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _272 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_309] = 26
                mem[_309 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _325 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_325 + idx + 68] = mem[_309 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_325 + 68] = mem[_325 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _325 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _324 = mem[64]
            mem[64] = mem[64] + 64
            mem[_324] = 26
            mem[_324 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _340 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_340 + idx + 68] = mem[_324 + idx + 32]
                idx = idx + 32
                continue 
            mem[_340 + 68] = mem[_340 + 74 len 26]
            revert with memory
              from mem[64]
               len _340 + -mem[64] + 100
        _252 = mem[64]
        mem[64] = mem[64] + 64
        mem[_252] = 30
        mem[_252 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _256 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_256 + idx + 68] = mem[_252 + idx + 32]
                idx = idx + 32
                continue 
            mem[_256 + 68] = mem[_256 + 70 len 30]
            revert with memory
              from mem[64]
               len _256 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            _277 = mem[64]
            mem[64] = mem[64] + 64
            mem[_277] = 26
            mem[_277 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _290 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_290 + idx + 68] = mem[_277 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_290 + 68] = mem[_290 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _290 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 26
                mem[_347 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _363 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_363 + idx + 68] = mem[_347 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_363 + 68] = mem[_363 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _363 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_362] = 26
            mem[_362 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _389 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_389 + idx + 68] = mem[_362 + idx + 32]
                idx = idx + 32
                continue 
            mem[_389 + 68] = mem[_389 + 74 len 26]
            revert with memory
              from mem[64]
               len _389 + -mem[64] + 100
        require bonusEndBlock - poolInfo[idx].field_512
        if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[idx].field_512 != rewardPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
            _289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_289] = 26
            mem[_289 + 32] = 'SafeMath: division by zero'
            if stor6 <= 0:
                _299 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_299 + idx + 68] = mem[_289 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_299 + 68] = mem[_299 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _299 + -mem[64] + 100
            require stor6
            if not 0 / stor6:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 26
                mem[_361 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _386 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_386 + idx + 68] = mem[_361 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_386 + 68] = mem[_386 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _386 + -mem[64] + 100
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _385 = mem[64]
            mem[64] = mem[64] + 64
            mem[_385] = 26
            mem[_385 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / stor6 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _413 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_413 + idx + 68] = mem[_385 + idx + 32]
                idx = idx + 32
                continue 
            mem[_413 + 68] = mem[_413 + 74 len 26]
            revert with memory
              from mem[64]
               len _413 + -mem[64] + 100
        require (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock)
        if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _298 = mem[64]
        mem[64] = mem[64] + 64
        mem[_298] = 26
        mem[_298 + 32] = 'SafeMath: division by zero'
        if stor6 <= 0:
            _315 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_315 + idx + 68] = mem[_298 + idx + 32]
                idx = idx + 32
                continue 
            mem[_315 + 68] = mem[_315 + 74 len 26]
            revert with memory
              from mem[64]
               len _315 + -mem[64] + 100
        require stor6
        if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6:
            _384 = mem[64]
            mem[64] = mem[64] + 64
            mem[_384] = 26
            mem[_384 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _410 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_410 + idx + 68] = mem[_384 + idx + 32]
                idx = idx + 32
                continue 
            mem[_410 + 68] = mem[_410 + 74 len 26]
            revert with memory
              from mem[64]
               len _410 + -mem[64] + 100
        require (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6
        if 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _409 = mem[64]
        mem[64] = mem[64] + 64
        mem[_409] = 26
        mem[_409 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor6 / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _438 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_438 + idx + 68] = mem[_409 + idx + 32]
            idx = idx + 32
            continue 
        mem[_438 + 68] = mem[_438 + 74 len 26]
        revert with memory
          from mem[64]
           len _438 + -mem[64] + 100
    rewardPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
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
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if uint256(poolInfo.field_512) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - uint256(poolInfo.field_512):
            if stor6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor6
            if not 0 / stor6:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                require userInfo[address(arg1)].field_0
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require block.number - uint256(poolInfo.field_512)
        if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            if stor6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor6
            if not 0 / stor6:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                require userInfo[address(arg1)].field_0
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            require 0 / stor6
            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if stor6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor6
        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
        if 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndBlock:
        if stor6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor6
        if not 0 / stor6:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor6
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - uint256(poolInfo.field_512):
        if stor6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor6
        if not 0 / stor6:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor6
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require bonusEndBlock - uint256(poolInfo.field_512)
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        if stor6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor6
        if not 0 / stor6:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor6
        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor6 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor6
    if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
    if 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    require userInfo[address(arg1)].field_0
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if userInfo[address(msg.sender)].field_0 <= 0:
            if arg1 <= 0:
                if not userInfo[address(msg.sender)].field_0:
                    userInfo[address(msg.sender)].field_256 = 0
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
            else:
                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo.field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
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
                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_0 += arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_0 += arg1
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
        else:
            if not userInfo[address(msg.sender)].field_0:
                if userInfo[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[address(msg.sender)].field_256 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                    mem[452 len 0] = 0
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(poolInfo.field_0)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 585 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 521 len 60], mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 617]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 522 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                    mem[452 len 0] = 0
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 490 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 521 len 60], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 490 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 521 len 60], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
        emit Deposit(arg1, msg.sender);
    else:
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            uint256(poolInfo.field_512) = block.number
            if userInfo[address(msg.sender)].field_0 <= 0:
                if arg1 <= 0:
                    if not userInfo[address(msg.sender)].field_0:
                        userInfo[address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[address(msg.sender)].field_0
                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                emit Deposit(arg1, msg.sender);
            else:
                if not userInfo[address(msg.sender)].field_0:
                    if userInfo[address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_256 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 490 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(poolInfo.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 585 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            mem[ceil32(return_data.size) + 681 len 0] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 617]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 696 len 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    require userInfo[address(msg.sender)].field_0
                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[address(msg.sender)].field_0 += arg1
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        emit Deposit(arg1, msg.sender);
                    else:
                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 490 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(address arg1, uint256 arg2):
                                             arg1,
                                             mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
                        else:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 490 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 585 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 709 len 4] = 0
                                mem[ceil32(return_data.size) + 681 len 0] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 681 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 617]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 696 len 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 687 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(arg1, msg.sender);
        else:
            if block.number <= bonusEndBlock:
                if uint256(poolInfo.field_512) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo.field_512):
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        uint256(poolInfo.field_512) = block.number
                        if userInfo[address(msg.sender)].field_0 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[608 len 4] = 0
                                mem[580 len 0] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 586 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if not userInfo[address(msg.sender)].field_0:
                                if userInfo[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[address(msg.sender)].field_256 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                    mem[644 len 0] = 0
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                    mem[644 len 0] = 0
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 682 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 901 len 4] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 809]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                        uint256(poolInfo.field_512) = block.number
                        if userInfo[address(msg.sender)].field_0 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[608 len 4] = 0
                                mem[580 len 0] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 586 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if not userInfo[address(msg.sender)].field_0:
                                if userInfo[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[address(msg.sender)].field_256 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                    mem[644 len 0] = 0
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = 0
                                        mem[708 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 714 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                    mem[644 len 0] = 0
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    emit Deposit(arg1, msg.sender);
                else:
                    require block.number - uint256(poolInfo.field_512)
                    if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                            uint256(poolInfo.field_512) = block.number
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not userInfo[address(msg.sender)].field_0:
                                    if userInfo[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            mem[ceil32(return_data.size) + 873 len 0] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                            uint256(poolInfo.field_512) = block.number
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not userInfo[address(msg.sender)].field_0:
                                    if userInfo[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                        mem[644 len 0] = 0
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                    else:
                        require (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
                        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                            uint256(poolInfo.field_512) = block.number
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not userInfo[address(msg.sender)].field_0:
                                    if userInfo[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                        else:
                            require (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
                            if 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]
                            uint256(poolInfo.field_512) = block.number
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not userInfo[address(msg.sender)].field_0:
                                    if userInfo[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
            else:
                if uint256(poolInfo.field_512) >= bonusEndBlock:
                    if stor6 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor6
                    if not 0 / stor6:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        uint256(poolInfo.field_512) = block.number
                        if userInfo[address(msg.sender)].field_0 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[544 len 4] = 0
                                mem[516 len 0] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if not userInfo[address(msg.sender)].field_0:
                                if userInfo[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[address(msg.sender)].field_256 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[548 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = 0
                                        mem[644 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 650 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 618 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 745]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 815 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(address arg1, uint256 arg2):
                                                     arg1,
                                                     mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 650 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 618 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 713 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 837 len 4] = 0
                                            mem[ceil32(return_data.size) + 809 len 0] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 809 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 745]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 824 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 815 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 618 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 745]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 815 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                    else:
                        require 0 / stor6
                        if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                        uint256(poolInfo.field_512) = block.number
                        if userInfo[address(msg.sender)].field_0 <= 0:
                            if arg1 <= 0:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(address(poolInfo.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[420 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[544 len 4] = 0
                                mem[516 len 0] = 0
                                call address(poolInfo.field_0) with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[452]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 531 len 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 522 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            emit Deposit(arg1, msg.sender);
                        else:
                            if not userInfo[address(msg.sender)].field_0:
                                if userInfo[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[address(msg.sender)].field_256 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 650 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 618 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 713 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 837 len 4] = 0
                                            mem[ceil32(return_data.size) + 809 len 0] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 809 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: division by zero'
                                            mem[ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 745]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 824 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 815 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 618 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 745]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 824 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 815 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(address arg1, uint256 arg2):
                                                         arg1,
                                                         mem[(2 * ceil32(return_data.size)) + 810 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 650 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 618 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 713 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 837 len 4] = 0
                                        mem[ceil32(return_data.size) + 809 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 809 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: division by zero'
                                        mem[ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 745]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 824 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 815 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                else:
                    if uint256(poolInfo.field_512) > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - uint256(poolInfo.field_512):
                        if stor6 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor6
                        if not 0 / stor6:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                            uint256(poolInfo.field_512) = block.number
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(address(poolInfo.field_0)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = 0
                                    mem[580 len 0] = 0
                                    call address(poolInfo.field_0) with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not userInfo[address(msg.sender)].field_0:
                                    if userInfo[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 682 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 901 len 4] = 0
                                            mem[ceil32(return_data.size) + 873 len 0] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 809]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                        else:
                            require 0 / stor6
                            if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                            uint256(poolInfo.field_512) = block.number
                            if userInfo[address(msg.sender)].field_0 <= 0:
                                if arg1 <= 0:
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userInfo[address(msg.sender)].field_0 += arg1
                                    if not userInfo[address(msg.sender)].field_0:
                                        userInfo[address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 586 len 31]
                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                            else:
                                if not userInfo[address(msg.sender)].field_0:
                                    if userInfo[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                        if arg1 <= 0:
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(address(poolInfo.field_0)):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[736 len 4] = 0
                                            mem[708 len 0] = 0
                                            call address(poolInfo.field_0) with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[644]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 723 len 22]
                                            if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userInfo[address(msg.sender)].field_0 += arg1
                                            if not userInfo[address(msg.sender)].field_0:
                                                userInfo[address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[address(msg.sender)].field_0
                                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 714 len 31]
                                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[612]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                    else:
                        require bonusEndBlock - uint256(poolInfo.field_512)
                        if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not 0 / stor6:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                                uint256(poolInfo.field_512) = block.number
                                if userInfo[address(msg.sender)].field_0 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = 0
                                        mem[580 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 586 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if not userInfo[address(msg.sender)].field_0:
                                        if userInfo[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[address(msg.sender)].field_256 <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(rewardTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                            mem[644 len 0] = 0
                                            call rewardTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size <= 0:
                                                if arg1 <= 0:
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 682 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                else:
                                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(address(poolInfo.field_0)):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                                    call address(poolInfo.field_0) with:
                                                         gas gas_remaining wei
                                                        args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[address(msg.sender)].field_0 += arg1
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                require return_data.size >= 32
                                                if not mem[612]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 691 len 22]
                                                if arg1 <= 0:
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 682 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                else:
                                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(address(poolInfo.field_0)):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                                    call address(poolInfo.field_0) with:
                                                         gas gas_remaining wei
                                                        args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[address(msg.sender)].field_0 += arg1
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(rewardTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                            call rewardTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[612]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(address arg1, uint256 arg2):
                                                             arg1,
                                                             mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                            else:
                                require 0 / stor6
                                if 10^12 * 0 / stor6 / 0 / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / ext_call.return_data[0]
                                uint256(poolInfo.field_512) = block.number
                                if userInfo[address(msg.sender)].field_0 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = 0
                                        mem[580 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 586 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if not userInfo[address(msg.sender)].field_0:
                                        if userInfo[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[address(msg.sender)].field_256 <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[736 len 4] = 0
                                                mem[708 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(rewardTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                            mem[644 len 0] = 0
                                            call rewardTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[612]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(rewardTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                            call rewardTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[612]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
                        else:
                            require (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
                            if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor6 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor6
                            if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                                uint256(poolInfo.field_512) = block.number
                                if userInfo[address(msg.sender)].field_0 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = 0
                                        mem[580 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 586 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    if not userInfo[address(msg.sender)].field_0:
                                        if userInfo[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[address(msg.sender)].field_256 <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(rewardTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                            call rewardTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[612]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 691 len 22]
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 682 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 901 len 4] = 0
                                                mem[ceil32(return_data.size) + 873 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 809]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                    revert with 0, 'Address: call to non-contract'
                                                if not ext_code.hash(address(poolInfo.field_0)):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[612 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[736 len 4] = 0
                                                mem[708 len 0] = 0
                                                call address(poolInfo.field_0) with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(rewardTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                            call rewardTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size <= 0:
                                                if arg1 <= 0:
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 682 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                else:
                                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(address(poolInfo.field_0)):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                                    mem[ceil32(return_data.size) + 873 len 0] = 0
                                                    call address(poolInfo.field_0) with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 873 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[address(msg.sender)].field_0 += arg1
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[612]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 691 len 22]
                                                if arg1 <= 0:
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 682 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                    emit Deposit(arg1, msg.sender);
                                                else:
                                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[address(msg.sender)].field_0 += arg1
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                    emit Deposit(address arg1, uint256 arg2):
                                                                 arg1,
                                                                 mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                 msg.sender,
                            else:
                                require (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6
                                if 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / ext_call.return_data[0]
                                uint256(poolInfo.field_512) = block.number
                                if userInfo[address(msg.sender)].field_0 <= 0:
                                    if arg1 <= 0:
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(address(poolInfo.field_0)):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[484 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = 0
                                        mem[580 len 0] = 0
                                        call address(poolInfo.field_0) with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                        if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userInfo[address(msg.sender)].field_0 += arg1
                                        if not userInfo[address(msg.sender)].field_0:
                                            userInfo[address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[address(msg.sender)].field_0
                                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 586 len 31]
                                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                else:
                                    if not userInfo[address(msg.sender)].field_0:
                                        if userInfo[address(msg.sender)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if -userInfo[address(msg.sender)].field_256 <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(rewardTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                                            mem[644 len 0] = 0
                                            call rewardTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size <= 0:
                                                if arg1 <= 0:
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 682 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                else:
                                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(address(poolInfo.field_0)):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                                    call address(poolInfo.field_0) with:
                                                         gas gas_remaining wei
                                                        args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[address(msg.sender)].field_0 += arg1
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                require return_data.size >= 32
                                                if not mem[612]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 691 len 22]
                                                if arg1 <= 0:
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 682 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                else:
                                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(address(poolInfo.field_0)):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                                    call address(poolInfo.field_0) with:
                                                         gas gas_remaining wei
                                                        args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[address(msg.sender)].field_0 += arg1
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                    else:
                                        require userInfo[address(msg.sender)].field_0
                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 <= 0:
                                            if arg1 <= 0:
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                                    if return_data.size > 0:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[644]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 723 len 22]
                                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userInfo[address(msg.sender)].field_0 += arg1
                                                if not userInfo[address(msg.sender)].field_0:
                                                    userInfo[address(msg.sender)].field_256 = 0
                                                else:
                                                    require userInfo[address(msg.sender)].field_0
                                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 714 len 31]
                                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                        else:
                                            if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(rewardTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[580 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                                            mem[644 len 0] = 0
                                            call rewardTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 224, mem[644 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size <= 0:
                                                if arg1 <= 0:
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 682 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                else:
                                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(address(poolInfo.field_0)):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                                    call address(poolInfo.field_0) with:
                                                         gas gas_remaining wei
                                                        args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    userInfo[address(msg.sender)].field_0 += arg1
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                            else:
                                                require return_data.size >= 32
                                                if not mem[612]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 691 len 22]
                                                if arg1 <= 0:
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 682 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                                else:
                                                    if ext_code.hash(address(poolInfo.field_0)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                        revert with 0, 'Address: call to non-contract'
                                                    if not ext_code.hash(address(poolInfo.field_0)):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 777 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 901 len 4] = 0
                                                    call address(poolInfo.field_0) with:
                                                         gas gas_remaining wei
                                                        args arg1, mem[ceil32(return_data.size) + 713 len 60], mem[ceil32(return_data.size) + 873 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[ceil32(return_data.size) + 809 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size > 0:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size > 0:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 809]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 888 len 22]
                                                    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userInfo[address(msg.sender)].field_0 += arg1
                                                    if not userInfo[address(msg.sender)].field_0:
                                                        userInfo[address(msg.sender)].field_256 = 0
                                                    else:
                                                        require userInfo[address(msg.sender)].field_0
                                                        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 879 len 31]
                                                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                                emit Deposit(arg1, msg.sender);
}



}
