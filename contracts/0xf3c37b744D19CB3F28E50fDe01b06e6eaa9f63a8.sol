contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
uint256 stor1;
address tokenAddress;
uint256 rewardPerBlock;
array of struct poolInfo;
uint32 stor5;
address stor5;
uint256 stor5;
mapping of struct userInfo;
uint256 stor7;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 sub_bcdae1bb;
uint256 totalDistributed;
uint8 isActive;

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

function isActive() payable {
    return bool(isActive)
}

function startBlock() payable {
    return startBlock
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function sub_bcdae1bb(?) payable {
    return sub_bcdae1bb
}

function totalDistributed() payable {
    return totalDistributed
}

function token() payable {
    return tokenAddress
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

function startState(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isActive = uint8(arg1)
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function setRewardBank(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor5) = arg1
}

function setMaxDistribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bcdae1bb = arg1
}

function setbonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function sub_d44bcc48(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 0 < poolInfo.length
    uint256(poolInfo.field_512) = arg3
    isActive = uint8(arg1)
    startBlock = arg3
    bonusEndBlock = arg4
    rewardPerBlock = arg2
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
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require 0 < poolInfo.length
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(address(poolInfo.field_0)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
    mem[324 len 0] = 0
    call address(poolInfo.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[address(msg.sender)].field_0, msg.sender);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        revert with 0, 'pool! 0'
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
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if not 0 / stor7:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / stor7
                        if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / stor7 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / stor7 / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not 0 / stor7:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / stor7
                            if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / stor7 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / stor7 / ext_call.return_data[0]
                    else:
                        require (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock)
                        if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7
                            if 10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if not 0 / stor7:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / stor7
                        if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / stor7 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / stor7 / ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not 0 / stor7:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / stor7
                            if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / stor7 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / stor7 / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[arg1].field_512 != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not 0 / stor7:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / stor7
                                if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / stor7 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / stor7 / ext_call.return_data[0]
                        else:
                            require (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock)
                            if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7
                                if 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    require ext_code.size(address(poolInfo.field_0))
    staticcall address(poolInfo.field_0).0x70a08231 with:
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if uint256(poolInfo.field_512) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - uint256(poolInfo.field_512):
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if not 0 / stor7:
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            require 0 / stor7
            if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require block.number - uint256(poolInfo.field_512)
        if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if not 0 / stor7:
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
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            require 0 / stor7
            if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor7
        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
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
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7
        if 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndBlock:
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor7
        if not 0 / stor7:
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
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor7
        if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - uint256(poolInfo.field_512):
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor7
        if not 0 / stor7:
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
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor7
        if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require bonusEndBlock - uint256(poolInfo.field_512)
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor7
        if not 0 / stor7:
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
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / stor7
        if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if stor7 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor7
    if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
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
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7
    if 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    require userInfo[address(arg1)].field_0
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not isActive:
        revert with 0, 'Pool is not active!'
    require 0 < poolInfo.length
    require 0 < poolInfo.length
    if block.number > uint256(poolInfo.field_512):
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if uint256(poolInfo.field_512) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(poolInfo.field_512):
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if not 0 / stor7:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                    else:
                        require 0 / stor7
                        if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor7 / ext_call.return_data[0]
                else:
                    require block.number - uint256(poolInfo.field_512)
                    if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not 0 / stor7:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        else:
                            require 0 / stor7
                            if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor7 / ext_call.return_data[0]
                    else:
                        require (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
                        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7
                            if 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_512) >= bonusEndBlock:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if not 0 / stor7:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                    else:
                        require 0 / stor7
                        if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / stor7 / ext_call.return_data[0]
                else:
                    if uint256(poolInfo.field_512) > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - uint256(poolInfo.field_512):
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not 0 / stor7:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        else:
                            require 0 / stor7
                            if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / stor7 / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - uint256(poolInfo.field_512)
                        if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not 0 / stor7:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                            else:
                                require 0 / stor7
                                if 10^12 * 0 / stor7 / 0 / stor7 != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if uint256(poolInfo.field_768) + (10^12 * 0 / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / stor7 / ext_call.return_data[0]
                        else:
                            require (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock)
                            if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if uint256(poolInfo.field_768) + (0 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                            else:
                                require (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7
                                if 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0]) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / ext_call.return_data[0]
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
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(address(poolInfo.field_0)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call address(poolInfo.field_0) with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(address(poolInfo.field_0)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call address(poolInfo.field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
            else:
                if sub_bcdae1bb <= -userInfo[address(msg.sender)].field_256 + totalDistributed:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(address(poolInfo.field_0)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(address(poolInfo.field_0)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), msg.sender, Mask(224, 32, -userInfo[address(msg.sender)].field_256) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call address(poolInfo.field_0) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -userInfo[address(msg.sender)].field_256) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), msg.sender, -userInfo[address(msg.sender)].field_256
                        if not unknown_0x23b872dd(?????), Mask(224, 0, stor5):
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        totalDistributed -= userInfo[address(msg.sender)].field_256
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                            if ext_code.size(address(poolInfo.field_0)) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[612 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args arg1, mem[424 len 60], mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), msg.sender, -userInfo[address(msg.sender)].field_256
                                if not unknown_0x23b872dd(?????), Mask(224, 0, stor5):
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
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
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        totalDistributed -= userInfo[address(msg.sender)].field_256
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if ext_code.size(address(poolInfo.field_0)) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), msg.sender, -userInfo[address(msg.sender)].field_256
                                if not unknown_0x23b872dd(?????), Mask(224, 0, stor5):
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
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
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeBEP20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
        else:
            require userInfo[address(msg.sender)].field_0
            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(address(poolInfo.field_0)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call address(poolInfo.field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
            else:
                if sub_bcdae1bb <= (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 + totalDistributed:
                    if arg1 <= 0:
                        if not userInfo[address(msg.sender)].field_0:
                            userInfo[address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[address(msg.sender)].field_0
                            if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if ext_code.size(address(poolInfo.field_0)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call address(poolInfo.field_0) with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if ext_code.size(address(poolInfo.field_0)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor5), uint32(stor5), msg.sender, Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call address(poolInfo.field_0) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        Mask(224, 0, stor5),
                                        uint32(stor5),
                                        msg.sender,
                                        (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256
                        if not unknown_0x23b872dd(?????), Mask(224, 0, stor5):
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        totalDistributed = totalDistributed + (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                            if ext_code.size(address(poolInfo.field_0)) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[612 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args arg1, mem[424 len 60], mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                Mask(224, 0, stor5),
                                                uint32(stor5),
                                                msg.sender,
                                                (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256
                                if not unknown_0x23b872dd(?????), Mask(224, 0, stor5):
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
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
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        totalDistributed = totalDistributed + (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256
                        if arg1 <= 0:
                            if not userInfo[address(msg.sender)].field_0:
                                userInfo[address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[address(msg.sender)].field_0
                                if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if ext_code.size(address(poolInfo.field_0)) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call address(poolInfo.field_0) with:
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), 
                                                Mask(224, 0, stor5),
                                                uint32(stor5),
                                                msg.sender,
                                                (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256
                                if not unknown_0x23b872dd(?????), Mask(224, 0, stor5):
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
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
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeBEP20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                userInfo[address(msg.sender)].field_0 += arg1
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[address(msg.sender)].field_0
                                    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / userInfo[address(msg.sender)].field_0 != uint256(poolInfo.field_768):
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
    emit Deposit(arg1, msg.sender);
    stor1 = 1
}



}
