contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 sub_900e3151;
address rewardTokenAddress;
uint32 stor3;
address rewardSenderAddress;
uint256 stor3;
uint256 rewardPerBlock;
uint256 sub_a32b9176;
uint256 sub_f9945e65;
uint256 sub_fac6f421;
array of struct poolInfo;
mapping of uint256 poolIndex;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function rewardSender() payable {
    return address(rewardSenderAddress)
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function sub_900e3151(?) payable {
    return sub_900e3151
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_a32b9176(?) payable {
    return sub_a32b9176
}

function poolIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    return poolIndex[arg1]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function sub_f9945e65(?) payable {
    return sub_f9945e65
}

function sub_fac6f421(?) payable {
    return sub_fac6f421
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardSender(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(rewardSenderAddress) = arg1
}

function setReduce(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if block.number >= arg2 + arg1:
        revert with 0, 'passed cycle'
    sub_fac6f421 = arg1
    sub_a32b9176 = arg2
    sub_f9945e65 = arg3
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function updateReduce() payable {
    if not sub_a32b9176:
    if 100 == sub_f9945e65:
    if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
        revert with 0, 'SafeMath: addition overflow'
    if block.number < sub_a32b9176 + sub_fac6f421:
    if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
        revert with 0, 'SafeMath: addition overflow'
    sub_fac6f421 += sub_a32b9176
    if not rewardPerBlock:
        # nil
    else:
        if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
        s = sub_f9945e65 * rewardPerBlock
        while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
            if block.number < sub_a32b9176 + sub_fac6f421:
            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                revert with 0, 'SafeMath: addition overflow'
            sub_fac6f421 += sub_a32b9176
            if not rewardPerBlock:
                rewardPerBlock = 0 / 100
                s = 0
                continue 
            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
            s = sub_f9945e65 * rewardPerBlock
            continue 
        revert with 0, 'SafeMath: addition overflow'
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
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
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if sub_900e3151 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_900e3151
                if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if sub_900e3151 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_900e3151
                if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if sub_900e3151 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_900e3151
            if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if sub_900e3151 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_900e3151
        if userInfo[arg1][address(arg2)].field_256 > 0 / sub_900e3151:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_900e3151 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_900e3151
    if userInfo[arg1][address(arg2)].field_256 > (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / sub_900e3151) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not sub_a32b9176:
        require arg1 < poolInfo.length
        if block.number > poolInfo[arg1].field_512:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if 0 / totalAllocPoint > 0:
                    if ext_call.return_data[0] > 0:
                        if ext_code.size(rewardTokenAddress) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, 0 / totalAllocPoint) >> 32
                        mem[352 len 4] = Mask(32, 64, 0 / totalAllocPoint) >> 64
                        call rewardTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalAllocPoint) << 480, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[338 len 14],
                                            Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                            mem[356 len 4]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[329 len 23],
                                                Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[260]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 339 len 22]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 330 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if 0 / totalAllocPoint > 0:
                        if ext_call.return_data[0] > 0:
                            if ext_code.size(rewardTokenAddress) <= 0:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, 0 / totalAllocPoint) >> 32
                            mem[352 len 4] = Mask(32, 64, 0 / totalAllocPoint) >> 64
                            call rewardTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalAllocPoint) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[338 len 14],
                                                Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[329 len 23],
                                                    Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                    mem[356 len 4]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[260]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 339 len 22]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 330 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > 0:
                        if ext_call.return_data[0] > 0:
                            if ext_code.size(rewardTokenAddress) <= 0:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 32
                            mem[352 len 4] = Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64
                            call rewardTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[338 len 14],
                                                Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[329 len 23],
                                                    Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64,
                                                    mem[356 len 4]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[260]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 339 len 22]
                                if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 330 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.number
    if 100 == sub_f9945e65:
        require arg1 < poolInfo.length
        if block.number > poolInfo[arg1].field_512:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if 0 / totalAllocPoint > 0:
                    if ext_call.return_data[0] > 0:
                        if ext_code.size(rewardTokenAddress) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, 0 / totalAllocPoint) >> 32
                        mem[352 len 4] = Mask(32, 64, 0 / totalAllocPoint) >> 64
                        call rewardTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalAllocPoint) << 480, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[338 len 14],
                                            Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                            mem[356 len 4]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[329 len 23],
                                                Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[260]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 339 len 22]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 330 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if 0 / totalAllocPoint > 0:
                        if ext_call.return_data[0] > 0:
                            if ext_code.size(rewardTokenAddress) <= 0:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, 0 / totalAllocPoint) >> 32
                            mem[352 len 4] = Mask(32, 64, 0 / totalAllocPoint) >> 64
                            call rewardTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalAllocPoint) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[338 len 14],
                                                Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[329 len 23],
                                                    Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                    mem[356 len 4]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[260]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 339 len 22]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 330 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > 0:
                        if ext_call.return_data[0] > 0:
                            if ext_code.size(rewardTokenAddress) <= 0:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 32
                            mem[352 len 4] = Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64
                            call rewardTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[338 len 14],
                                                Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[329 len 23],
                                                    Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64,
                                                    mem[356 len 4]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[260]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 339 len 22]
                                if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 330 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.number
    if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
        revert with 0, 'SafeMath: addition overflow'
    if block.number >= sub_a32b9176 + sub_fac6f421:
        if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
            revert with 0, 'SafeMath: addition overflow'
        sub_fac6f421 += sub_a32b9176
        if not rewardPerBlock:
            # nil
        else:
            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
            s = sub_f9945e65 * rewardPerBlock
            while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
                if block.number >= sub_a32b9176 + sub_fac6f421:
                    if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fac6f421 += sub_a32b9176
                    if not rewardPerBlock:
                        rewardPerBlock = 0 / 100
                        s = 0
                        continue 
                    if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                    s = sub_f9945e65 * rewardPerBlock
                    continue 
                require arg1 < poolInfo.length
                if block.number > poolInfo[arg1].field_512:
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                mem[132] = address(rewardSenderAddress)
                                mem[164] = this.address
                                mem[196] = 0 / totalAllocPoint
                                mem[128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor3)
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                t = 128
                                u = 228
                                idx = 100
                                while idx >= 32:
                                    mem[u] = mem[t]
                                    rewardPerBlock = s / 100
                                    t = t + 32
                                    u = u + 32
                                    idx = idx - 32
                                    continue 
                                mem[324] = mem[252 len 4] or Mask(224, 32, mem[324])
                                call rewardTokenAddress.mem[228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[232 len 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if False and not Mask(224, 0, stor3):
                                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[338 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[329 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[260]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 339 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 330 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    mem[132] = address(rewardSenderAddress)
                                    mem[164] = this.address
                                    mem[196] = 0 / totalAllocPoint
                                    mem[128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor3)
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    t = 128
                                    u = 228
                                    idx = 100
                                    while idx >= 32:
                                        mem[u] = mem[t]
                                        rewardPerBlock = s / 100
                                        t = t + 32
                                        u = u + 32
                                        idx = idx - 32
                                        continue 
                                    mem[324] = mem[252 len 4] or Mask(224, 32, mem[324])
                                    call rewardTokenAddress.mem[228 len 4] with:
                                         gas gas_remaining wei
                                        args mem[232 len 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if False and not Mask(224, 0, stor3):
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[338 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[329 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[260]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 339 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 330 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    mem[132] = address(rewardSenderAddress)
                                    mem[164] = this.address
                                    mem[196] = (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    mem[128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor3)
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    t = 128
                                    u = 228
                                    idx = 100
                                    while idx >= 32:
                                        mem[u] = mem[t]
                                        rewardPerBlock = s / 100
                                        t = t + 32
                                        u = u + 32
                                        idx = idx - 32
                                        continue 
                                    mem[324] = mem[252 len 4] or Mask(224, 32, mem[324])
                                    call rewardTokenAddress.mem[228 len 4] with:
                                         gas gas_remaining wei
                                        args mem[232 len 96]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if False and not Mask(224, 0, stor3):
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[338 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[329 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[260]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 339 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 330 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
            revert with 0, 'SafeMath: addition overflow'
    else:
        require arg1 < poolInfo.length
        if block.number > poolInfo[arg1].field_512:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if poolInfo[arg1].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if 0 / totalAllocPoint > 0:
                    if ext_call.return_data[0] > 0:
                        if ext_code.size(rewardTokenAddress) <= 0:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, 0 / totalAllocPoint) >> 32
                        mem[352 len 4] = Mask(32, 64, 0 / totalAllocPoint) >> 64
                        call rewardTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalAllocPoint) << 480, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[338 len 14],
                                            Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                            mem[356 len 4]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[329 len 23],
                                                Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[260]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 339 len 22]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 330 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if 0 / totalAllocPoint > 0:
                        if ext_call.return_data[0] > 0:
                            if ext_code.size(rewardTokenAddress) <= 0:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, 0 / totalAllocPoint) >> 32
                            mem[352 len 4] = Mask(32, 64, 0 / totalAllocPoint) >> 64
                            call rewardTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalAllocPoint) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[338 len 14],
                                                Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[329 len 23],
                                                    Mask(32, 64, 0 / totalAllocPoint) >> 64,
                                                    mem[356 len 4]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[260]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 339 len 22]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 330 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > 0:
                        if ext_call.return_data[0] > 0:
                            if ext_code.size(rewardTokenAddress) <= 0:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[228 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3), uint32(stor3), address(this.address), Mask(224, 32, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 32
                            mem[352 len 4] = Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64
                            call rewardTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[338 len 14],
                                                Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64,
                                                mem[356 len 4]
                                if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[329 len 23],
                                                    Mask(32, 64, (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) >> 64,
                                                    mem[356 len 4]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[260]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 339 len 22]
                                if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != sub_900e3151:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 330 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.number
}

function setRewardPerBlock(uint256 arg1, bool arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2:
        idx = 0
        while idx < poolInfo.length:
            if not sub_a32b9176:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _711 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _712 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_712 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_712 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _732 = mem[_712]
                                t = _712 + 32
                                u = _711 + 132
                                s = mem[_712]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_711 + floor32(mem[_712]) + 132] = mem[_712 + -(mem[_712] % 32) + floor32(mem[_712]) + 64 len mem[_712] % 32] or Mask(8 * -(mem[_712] % 32) + 32, -(8 * -(mem[_712] % 32) + 32) + 256, mem[_711 + floor32(mem[_712]) + 132])
                                call rewardTokenAddress.mem[_711 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_711 + 136 len _732 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_711 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_711 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _711 + ceil32(return_data.size) + 133
                                    mem[_711 + 132] = return_data.size
                                    mem[_711 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_711 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_711 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_711 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _716 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _717 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_717 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_717 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _739 = mem[_717]
                                    t = _717 + 32
                                    u = _716 + 132
                                    s = mem[_717]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_716 + floor32(mem[_717]) + 132] = mem[_717 + -(mem[_717] % 32) + floor32(mem[_717]) + 64 len mem[_717] % 32] or Mask(8 * -(mem[_717] % 32) + 32, -(8 * -(mem[_717] % 32) + 32) + 256, mem[_716 + floor32(mem[_717]) + 132])
                                    call rewardTokenAddress.mem[_716 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_716 + 136 len _739 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_716 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_716 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _716 + ceil32(return_data.size) + 133
                                        mem[_716 + 132] = return_data.size
                                        mem[_716 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_716 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_716 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_716 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _722 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _723 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_723 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_723 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _750 = mem[_723]
                                    t = _723 + 32
                                    u = _722 + 132
                                    s = mem[_723]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_722 + floor32(mem[_723]) + 132] = mem[_723 + -(mem[_723] % 32) + floor32(mem[_723]) + 64 len mem[_723] % 32] or Mask(8 * -(mem[_723] % 32) + 32, -(8 * -(mem[_723] % 32) + 32) + 256, mem[_722 + floor32(mem[_723]) + 132])
                                    call rewardTokenAddress.mem[_722 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_722 + 136 len _750 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_722 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_722 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _722 + ceil32(return_data.size) + 133
                                        mem[_722 + 132] = return_data.size
                                        mem[_722 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_722 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_722 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_722 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if 100 == sub_f9945e65:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _719 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _720 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_720 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_720 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _746 = mem[_720]
                                t = _720 + 32
                                u = _719 + 132
                                s = mem[_720]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_719 + floor32(mem[_720]) + 132] = mem[_720 + -(mem[_720] % 32) + floor32(mem[_720]) + 64 len mem[_720] % 32] or Mask(8 * -(mem[_720] % 32) + 32, -(8 * -(mem[_720] % 32) + 32) + 256, mem[_719 + floor32(mem[_720]) + 132])
                                call rewardTokenAddress.mem[_719 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_719 + 136 len _746 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_719 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_719 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _719 + ceil32(return_data.size) + 133
                                    mem[_719 + 132] = return_data.size
                                    mem[_719 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_719 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_719 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_719 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _725 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _726 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_726 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_726 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _761 = mem[_726]
                                    t = _726 + 32
                                    u = _725 + 132
                                    s = mem[_726]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_725 + floor32(mem[_726]) + 132] = mem[_726 + -(mem[_726] % 32) + floor32(mem[_726]) + 64 len mem[_726] % 32] or Mask(8 * -(mem[_726] % 32) + 32, -(8 * -(mem[_726] % 32) + 32) + 256, mem[_725 + floor32(mem[_726]) + 132])
                                    call rewardTokenAddress.mem[_725 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_725 + 136 len _761 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_725 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_725 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _725 + ceil32(return_data.size) + 133
                                        mem[_725 + 132] = return_data.size
                                        mem[_725 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_725 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_725 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_725 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _728 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _729 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_729 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_729 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _770 = mem[_729]
                                    t = _729 + 32
                                    u = _728 + 132
                                    s = mem[_729]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_728 + floor32(mem[_729]) + 132] = mem[_729 + -(mem[_729] % 32) + floor32(mem[_729]) + 64 len mem[_729] % 32] or Mask(8 * -(mem[_729] % 32) + 32, -(8 * -(mem[_729] % 32) + 32) + 256, mem[_728 + floor32(mem[_729]) + 132])
                                    call rewardTokenAddress.mem[_728 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_728 + 136 len _770 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_728 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_728 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _728 + ceil32(return_data.size) + 133
                                        mem[_728 + 132] = return_data.size
                                        mem[_728 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_728 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_728 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_728 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                revert with 0, 'SafeMath: addition overflow'
            if block.number >= sub_a32b9176 + sub_fac6f421:
                if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fac6f421 += sub_a32b9176
                if not rewardPerBlock:
                    # nil
                else:
                    if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                    s = sub_f9945e65 * rewardPerBlock
                    while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
                        if block.number >= sub_a32b9176 + sub_fac6f421:
                            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fac6f421 += sub_a32b9176
                            if not rewardPerBlock:
                                rewardPerBlock = 0 / 100
                                s = 0
                                continue 
                            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                            s = sub_f9945e65 * rewardPerBlock
                            continue 
                        require idx < poolInfo.length
                        mem[0] = 8
                        if block.number > poolInfo[idx].field_512:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(poolInfo[idx].field_0)
                            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint > 0:
                                    if ext_call.return_data[0] > 0:
                                        _6736 = mem[64]
                                        mem[mem[64] + 36] = address(rewardSenderAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 0 / totalAllocPoint
                                        _6737 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_6737 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6737 + 36 len 28]
                                        if ext_code.size(rewardTokenAddress) <= 0:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _6752 = mem[_6737]
                                        u = _6737 + 32
                                        v = _6736 + 132
                                        t = mem[_6737]
                                        while t >= 32:
                                            mem[v] = mem[u]
                                            rewardPerBlock = s / 100
                                            u = u + 32
                                            v = v + 32
                                            t = t - 32
                                            continue 
                                        mem[_6736 + floor32(mem[_6737]) + 132] = mem[_6737 + -(mem[_6737] % 32) + floor32(mem[_6737]) + 64 len mem[_6737] % 32] or Mask(8 * -(mem[_6737] % 32) + 32, -(8 * -(mem[_6737] % 32) + 32) + 256, mem[_6736 + floor32(mem[_6737]) + 132])
                                        call rewardTokenAddress.mem[_6736 + 132 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_6736 + 136 len _6752 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_6736 + 242 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6736 + 233 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            mem[64] = _6736 + ceil32(return_data.size) + 133
                                            mem[_6736 + 132] = return_data.size
                                            mem[_6736 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[_6736 + 164]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_6736 + ceil32(return_data.size) + 243 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_6736 + ceil32(return_data.size) + 234 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _6739 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = 0 / totalAllocPoint
                                            _6740 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6740 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6740 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _6759 = mem[_6740]
                                            u = _6740 + 32
                                            v = _6739 + 132
                                            t = mem[_6740]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_6739 + floor32(mem[_6740]) + 132] = mem[_6740 + -(mem[_6740] % 32) + floor32(mem[_6740]) + 64 len mem[_6740] % 32] or Mask(8 * -(mem[_6740] % 32) + 32, -(8 * -(mem[_6740] % 32) + 32) + 256, mem[_6739 + floor32(mem[_6740]) + 132])
                                            call rewardTokenAddress.mem[_6739 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6739 + 136 len _6759 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6739 + 242 len 22]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6739 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _6739 + ceil32(return_data.size) + 133
                                                mem[_6739 + 132] = return_data.size
                                                mem[_6739 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_6739 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6739 + ceil32(return_data.size) + 243 len 22]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_6739 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _6742 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            _6743 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6743 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6743 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _6763 = mem[_6743]
                                            u = _6743 + 32
                                            v = _6742 + 132
                                            t = mem[_6743]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_6742 + floor32(mem[_6743]) + 132] = mem[_6743 + -(mem[_6743] % 32) + floor32(mem[_6743]) + 64 len mem[_6743] % 32] or Mask(8 * -(mem[_6743] % 32) + 32, -(8 * -(mem[_6743] % 32) + 32) + 256, mem[_6742 + floor32(mem[_6743]) + 132])
                                            call rewardTokenAddress.mem[_6742 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6742 + 136 len _6763 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6742 + 242 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6742 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _6742 + ceil32(return_data.size) + 133
                                                mem[_6742 + 132] = return_data.size
                                                mem[_6742 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_6742 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6742 + ceil32(return_data.size) + 243 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_6742 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                        rewardPerBlock = s / 100
                        idx = idx + 1
                        continue 
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _2367 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _2368 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2368 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2368 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2379 = mem[_2368]
                                t = _2368 + 32
                                u = _2367 + 132
                                s = mem[_2368]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2367 + floor32(mem[_2368]) + 132] = mem[_2368 + -(mem[_2368] % 32) + floor32(mem[_2368]) + 64 len mem[_2368] % 32] or Mask(8 * -(mem[_2368] % 32) + 32, -(8 * -(mem[_2368] % 32) + 32) + 256, mem[_2367 + floor32(mem[_2368]) + 132])
                                call rewardTokenAddress.mem[_2367 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2367 + 136 len _2379 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2367 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2367 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _2367 + ceil32(return_data.size) + 133
                                    mem[_2367 + 132] = return_data.size
                                    mem[_2367 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_2367 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2367 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_2367 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _2372 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _2373 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_2373 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2373 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _2385 = mem[_2373]
                                    t = _2373 + 32
                                    u = _2372 + 132
                                    s = mem[_2373]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2372 + floor32(mem[_2373]) + 132] = mem[_2373 + -(mem[_2373] % 32) + floor32(mem[_2373]) + 64 len mem[_2373] % 32] or Mask(8 * -(mem[_2373] % 32) + 32, -(8 * -(mem[_2373] % 32) + 32) + 256, mem[_2372 + floor32(mem[_2373]) + 132])
                                    call rewardTokenAddress.mem[_2372 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2372 + 136 len _2385 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2372 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2372 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _2372 + ceil32(return_data.size) + 133
                                        mem[_2372 + 132] = return_data.size
                                        mem[_2372 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_2372 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2372 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_2372 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _2375 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _2376 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_2376 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2376 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _2391 = mem[_2376]
                                    t = _2376 + 32
                                    u = _2375 + 132
                                    s = mem[_2376]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2375 + floor32(mem[_2376]) + 132] = mem[_2376 + -(mem[_2376] % 32) + floor32(mem[_2376]) + 64 len mem[_2376] % 32] or Mask(8 * -(mem[_2376] % 32) + 32, -(8 * -(mem[_2376] % 32) + 32) + 256, mem[_2375 + floor32(mem[_2376]) + 132])
                                    call rewardTokenAddress.mem[_2375 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2375 + 136 len _2391 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2375 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2375 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _2375 + ceil32(return_data.size) + 133
                                        mem[_2375 + 132] = return_data.size
                                        mem[_2375 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_2375 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2375 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_2375 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
    rewardPerBlock = arg1
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            if not sub_a32b9176:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _729 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _730 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_730 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_730 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _750 = mem[_730]
                                t = _730 + 32
                                u = _729 + 132
                                s = mem[_730]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_729 + floor32(mem[_730]) + 132] = mem[_730 + -(mem[_730] % 32) + floor32(mem[_730]) + 64 len mem[_730] % 32] or Mask(8 * -(mem[_730] % 32) + 32, -(8 * -(mem[_730] % 32) + 32) + 256, mem[_729 + floor32(mem[_730]) + 132])
                                call rewardTokenAddress.mem[_729 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_729 + 136 len _750 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_729 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_729 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _729 + ceil32(return_data.size) + 133
                                    mem[_729 + 132] = return_data.size
                                    mem[_729 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_729 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_729 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_729 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _734 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _735 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_735 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_735 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _757 = mem[_735]
                                    t = _735 + 32
                                    u = _734 + 132
                                    s = mem[_735]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_734 + floor32(mem[_735]) + 132] = mem[_735 + -(mem[_735] % 32) + floor32(mem[_735]) + 64 len mem[_735] % 32] or Mask(8 * -(mem[_735] % 32) + 32, -(8 * -(mem[_735] % 32) + 32) + 256, mem[_734 + floor32(mem[_735]) + 132])
                                    call rewardTokenAddress.mem[_734 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_734 + 136 len _757 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_734 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_734 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _734 + ceil32(return_data.size) + 133
                                        mem[_734 + 132] = return_data.size
                                        mem[_734 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_734 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_734 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_734 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _740 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _741 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_741 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_741 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _768 = mem[_741]
                                    t = _741 + 32
                                    u = _740 + 132
                                    s = mem[_741]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_740 + floor32(mem[_741]) + 132] = mem[_741 + -(mem[_741] % 32) + floor32(mem[_741]) + 64 len mem[_741] % 32] or Mask(8 * -(mem[_741] % 32) + 32, -(8 * -(mem[_741] % 32) + 32) + 256, mem[_740 + floor32(mem[_741]) + 132])
                                    call rewardTokenAddress.mem[_740 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_740 + 136 len _768 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_740 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_740 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _740 + ceil32(return_data.size) + 133
                                        mem[_740 + 132] = return_data.size
                                        mem[_740 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_740 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_740 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_740 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if 100 == sub_f9945e65:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _737 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _738 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_738 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_738 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _764 = mem[_738]
                                t = _738 + 32
                                u = _737 + 132
                                s = mem[_738]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_737 + floor32(mem[_738]) + 132] = mem[_738 + -(mem[_738] % 32) + floor32(mem[_738]) + 64 len mem[_738] % 32] or Mask(8 * -(mem[_738] % 32) + 32, -(8 * -(mem[_738] % 32) + 32) + 256, mem[_737 + floor32(mem[_738]) + 132])
                                call rewardTokenAddress.mem[_737 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_737 + 136 len _764 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_737 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_737 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _737 + ceil32(return_data.size) + 133
                                    mem[_737 + 132] = return_data.size
                                    mem[_737 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_737 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_737 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_737 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _743 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _744 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_744 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_744 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _779 = mem[_744]
                                    t = _744 + 32
                                    u = _743 + 132
                                    s = mem[_744]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_743 + floor32(mem[_744]) + 132] = mem[_744 + -(mem[_744] % 32) + floor32(mem[_744]) + 64 len mem[_744] % 32] or Mask(8 * -(mem[_744] % 32) + 32, -(8 * -(mem[_744] % 32) + 32) + 256, mem[_743 + floor32(mem[_744]) + 132])
                                    call rewardTokenAddress.mem[_743 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_743 + 136 len _779 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_743 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_743 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _743 + ceil32(return_data.size) + 133
                                        mem[_743 + 132] = return_data.size
                                        mem[_743 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_743 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_743 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_743 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _746 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _747 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_747 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_747 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _788 = mem[_747]
                                    t = _747 + 32
                                    u = _746 + 132
                                    s = mem[_747]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_746 + floor32(mem[_747]) + 132] = mem[_747 + -(mem[_747] % 32) + floor32(mem[_747]) + 64 len mem[_747] % 32] or Mask(8 * -(mem[_747] % 32) + 32, -(8 * -(mem[_747] % 32) + 32) + 256, mem[_746 + floor32(mem[_747]) + 132])
                                    call rewardTokenAddress.mem[_746 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_746 + 136 len _788 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_746 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_746 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _746 + ceil32(return_data.size) + 133
                                        mem[_746 + 132] = return_data.size
                                        mem[_746 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_746 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_746 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_746 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                revert with 0, 'SafeMath: addition overflow'
            if block.number >= sub_a32b9176 + sub_fac6f421:
                if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fac6f421 += sub_a32b9176
                if not rewardPerBlock:
                    # nil
                else:
                    if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                    s = sub_f9945e65 * rewardPerBlock
                    while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
                        if block.number >= sub_a32b9176 + sub_fac6f421:
                            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fac6f421 += sub_a32b9176
                            if not rewardPerBlock:
                                rewardPerBlock = 0 / 100
                                s = 0
                                continue 
                            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                            s = sub_f9945e65 * rewardPerBlock
                            continue 
                        require idx < poolInfo.length
                        mem[0] = 8
                        if block.number > poolInfo[idx].field_512:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(poolInfo[idx].field_0)
                            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint > 0:
                                    if ext_call.return_data[0] > 0:
                                        _6754 = mem[64]
                                        mem[mem[64] + 36] = address(rewardSenderAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 0 / totalAllocPoint
                                        _6755 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_6755 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6755 + 36 len 28]
                                        if ext_code.size(rewardTokenAddress) <= 0:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _6770 = mem[_6755]
                                        u = _6755 + 32
                                        v = _6754 + 132
                                        t = mem[_6755]
                                        while t >= 32:
                                            mem[v] = mem[u]
                                            rewardPerBlock = s / 100
                                            u = u + 32
                                            v = v + 32
                                            t = t - 32
                                            continue 
                                        mem[_6754 + floor32(mem[_6755]) + 132] = mem[_6755 + -(mem[_6755] % 32) + floor32(mem[_6755]) + 64 len mem[_6755] % 32] or Mask(8 * -(mem[_6755] % 32) + 32, -(8 * -(mem[_6755] % 32) + 32) + 256, mem[_6754 + floor32(mem[_6755]) + 132])
                                        call rewardTokenAddress.mem[_6754 + 132 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_6754 + 136 len _6770 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_6754 + 242 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6754 + 233 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            mem[64] = _6754 + ceil32(return_data.size) + 133
                                            mem[_6754 + 132] = return_data.size
                                            mem[_6754 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[_6754 + 164]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_6754 + ceil32(return_data.size) + 243 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_6754 + ceil32(return_data.size) + 234 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _6757 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = 0 / totalAllocPoint
                                            _6758 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6758 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6758 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _6777 = mem[_6758]
                                            u = _6758 + 32
                                            v = _6757 + 132
                                            t = mem[_6758]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_6757 + floor32(mem[_6758]) + 132] = mem[_6758 + -(mem[_6758] % 32) + floor32(mem[_6758]) + 64 len mem[_6758] % 32] or Mask(8 * -(mem[_6758] % 32) + 32, -(8 * -(mem[_6758] % 32) + 32) + 256, mem[_6757 + floor32(mem[_6758]) + 132])
                                            call rewardTokenAddress.mem[_6757 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6757 + 136 len _6777 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6757 + 242 len 22]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6757 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _6757 + ceil32(return_data.size) + 133
                                                mem[_6757 + 132] = return_data.size
                                                mem[_6757 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_6757 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6757 + ceil32(return_data.size) + 243 len 22]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_6757 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _6760 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            _6761 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6761 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6761 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _6781 = mem[_6761]
                                            u = _6761 + 32
                                            v = _6760 + 132
                                            t = mem[_6761]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_6760 + floor32(mem[_6761]) + 132] = mem[_6761 + -(mem[_6761] % 32) + floor32(mem[_6761]) + 64 len mem[_6761] % 32] or Mask(8 * -(mem[_6761] % 32) + 32, -(8 * -(mem[_6761] % 32) + 32) + 256, mem[_6760 + floor32(mem[_6761]) + 132])
                                            call rewardTokenAddress.mem[_6760 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6760 + 136 len _6781 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6760 + 242 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6760 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _6760 + ceil32(return_data.size) + 133
                                                mem[_6760 + 132] = return_data.size
                                                mem[_6760 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_6760 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6760 + ceil32(return_data.size) + 243 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_6760 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                        rewardPerBlock = s / 100
                        idx = idx + 1
                        continue 
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _2385 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _2386 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2386 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2386 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2397 = mem[_2386]
                                t = _2386 + 32
                                u = _2385 + 132
                                s = mem[_2386]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2385 + floor32(mem[_2386]) + 132] = mem[_2386 + -(mem[_2386] % 32) + floor32(mem[_2386]) + 64 len mem[_2386] % 32] or Mask(8 * -(mem[_2386] % 32) + 32, -(8 * -(mem[_2386] % 32) + 32) + 256, mem[_2385 + floor32(mem[_2386]) + 132])
                                call rewardTokenAddress.mem[_2385 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2385 + 136 len _2397 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2385 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2385 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _2385 + ceil32(return_data.size) + 133
                                    mem[_2385 + 132] = return_data.size
                                    mem[_2385 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_2385 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2385 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_2385 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _2390 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _2391 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_2391 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2391 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _2403 = mem[_2391]
                                    t = _2391 + 32
                                    u = _2390 + 132
                                    s = mem[_2391]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2390 + floor32(mem[_2391]) + 132] = mem[_2391 + -(mem[_2391] % 32) + floor32(mem[_2391]) + 64 len mem[_2391] % 32] or Mask(8 * -(mem[_2391] % 32) + 32, -(8 * -(mem[_2391] % 32) + 32) + 256, mem[_2390 + floor32(mem[_2391]) + 132])
                                    call rewardTokenAddress.mem[_2390 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2390 + 136 len _2403 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2390 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2390 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _2390 + ceil32(return_data.size) + 133
                                        mem[_2390 + 132] = return_data.size
                                        mem[_2390 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_2390 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2390 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_2390 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _2393 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _2394 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_2394 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2394 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _2409 = mem[_2394]
                                    t = _2394 + 32
                                    u = _2393 + 132
                                    s = mem[_2394]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2393 + floor32(mem[_2394]) + 132] = mem[_2394 + -(mem[_2394] % 32) + floor32(mem[_2394]) + 64 len mem[_2394] % 32] or Mask(8 * -(mem[_2394] % 32) + 32, -(8 * -(mem[_2394] % 32) + 32) + 256, mem[_2393 + floor32(mem[_2394]) + 132])
                                    call rewardTokenAddress.mem[_2393 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2393 + 136 len _2409 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2393 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2393 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _2393 + ceil32(return_data.size) + 133
                                        mem[_2393 + 132] = return_data.size
                                        mem[_2393 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_2393 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2393 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_2393 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[0] = arg2
    mem[32] = 9
    if poolIndex[address(arg2)]:
        revert with 0, 'exist'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            if not sub_a32b9176:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _762 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _763 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_763 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_763 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _783 = mem[_763]
                                t = _763 + 32
                                u = _762 + 132
                                s = mem[_763]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_762 + floor32(mem[_763]) + 132] = mem[_763 + -(mem[_763] % 32) + floor32(mem[_763]) + 64 len mem[_763] % 32] or Mask(8 * -(mem[_763] % 32) + 32, -(8 * -(mem[_763] % 32) + 32) + 256, mem[_762 + floor32(mem[_763]) + 132])
                                call rewardTokenAddress.mem[_762 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_762 + 136 len _783 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_762 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_762 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _762 + ceil32(return_data.size) + 133
                                    mem[_762 + 132] = return_data.size
                                    mem[_762 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_762 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_762 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_762 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _767 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _768 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_768 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_768 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _790 = mem[_768]
                                    t = _768 + 32
                                    u = _767 + 132
                                    s = mem[_768]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_767 + floor32(mem[_768]) + 132] = mem[_768 + -(mem[_768] % 32) + floor32(mem[_768]) + 64 len mem[_768] % 32] or Mask(8 * -(mem[_768] % 32) + 32, -(8 * -(mem[_768] % 32) + 32) + 256, mem[_767 + floor32(mem[_768]) + 132])
                                    call rewardTokenAddress.mem[_767 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_767 + 136 len _790 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_767 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_767 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _767 + ceil32(return_data.size) + 133
                                        mem[_767 + 132] = return_data.size
                                        mem[_767 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_767 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_767 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_767 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _773 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _774 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_774 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_774 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _801 = mem[_774]
                                    t = _774 + 32
                                    u = _773 + 132
                                    s = mem[_774]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_773 + floor32(mem[_774]) + 132] = mem[_774 + -(mem[_774] % 32) + floor32(mem[_774]) + 64 len mem[_774] % 32] or Mask(8 * -(mem[_774] % 32) + 32, -(8 * -(mem[_774] % 32) + 32) + 256, mem[_773 + floor32(mem[_774]) + 132])
                                    call rewardTokenAddress.mem[_773 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_773 + 136 len _801 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_773 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_773 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _773 + ceil32(return_data.size) + 133
                                        mem[_773 + 132] = return_data.size
                                        mem[_773 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_773 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_773 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_773 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if 100 == sub_f9945e65:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _770 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _771 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_771 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_771 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _797 = mem[_771]
                                t = _771 + 32
                                u = _770 + 132
                                s = mem[_771]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_770 + floor32(mem[_771]) + 132] = mem[_771 + -(mem[_771] % 32) + floor32(mem[_771]) + 64 len mem[_771] % 32] or Mask(8 * -(mem[_771] % 32) + 32, -(8 * -(mem[_771] % 32) + 32) + 256, mem[_770 + floor32(mem[_771]) + 132])
                                call rewardTokenAddress.mem[_770 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_770 + 136 len _797 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_770 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_770 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _770 + ceil32(return_data.size) + 133
                                    mem[_770 + 132] = return_data.size
                                    mem[_770 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_770 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_770 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_770 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _776 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _777 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_777 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_777 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _812 = mem[_777]
                                    t = _777 + 32
                                    u = _776 + 132
                                    s = mem[_777]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_776 + floor32(mem[_777]) + 132] = mem[_777 + -(mem[_777] % 32) + floor32(mem[_777]) + 64 len mem[_777] % 32] or Mask(8 * -(mem[_777] % 32) + 32, -(8 * -(mem[_777] % 32) + 32) + 256, mem[_776 + floor32(mem[_777]) + 132])
                                    call rewardTokenAddress.mem[_776 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_776 + 136 len _812 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_776 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_776 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _776 + ceil32(return_data.size) + 133
                                        mem[_776 + 132] = return_data.size
                                        mem[_776 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_776 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_776 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_776 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _779 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _780 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_780 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_780 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _821 = mem[_780]
                                    t = _780 + 32
                                    u = _779 + 132
                                    s = mem[_780]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_779 + floor32(mem[_780]) + 132] = mem[_780 + -(mem[_780] % 32) + floor32(mem[_780]) + 64 len mem[_780] % 32] or Mask(8 * -(mem[_780] % 32) + 32, -(8 * -(mem[_780] % 32) + 32) + 256, mem[_779 + floor32(mem[_780]) + 132])
                                    call rewardTokenAddress.mem[_779 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_779 + 136 len _821 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_779 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _779 + ceil32(return_data.size) + 133
                                        mem[_779 + 132] = return_data.size
                                        mem[_779 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_779 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_779 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_779 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                revert with 0, 'SafeMath: addition overflow'
            if block.number >= sub_a32b9176 + sub_fac6f421:
                if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                    revert with 0, 'SafeMath: addition overflow'
                sub_fac6f421 += sub_a32b9176
                if not rewardPerBlock:
                    # nil
                else:
                    if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                    s = sub_f9945e65 * rewardPerBlock
                    while sub_a32b9176 + sub_fac6f421 >= sub_fac6f421:
                        if block.number >= sub_a32b9176 + sub_fac6f421:
                            if sub_a32b9176 + sub_fac6f421 < sub_fac6f421:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_fac6f421 += sub_a32b9176
                            if not rewardPerBlock:
                                rewardPerBlock = 0 / 100
                                s = 0
                                continue 
                            if sub_f9945e65 * rewardPerBlock / rewardPerBlock != sub_f9945e65:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            rewardPerBlock = sub_f9945e65 * rewardPerBlock / 100
                            s = sub_f9945e65 * rewardPerBlock
                            continue 
                        require idx < poolInfo.length
                        mem[0] = 8
                        if block.number > poolInfo[idx].field_512:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(poolInfo[idx].field_0)
                            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint > 0:
                                    if ext_call.return_data[0] > 0:
                                        _6787 = mem[64]
                                        mem[mem[64] + 36] = address(rewardSenderAddress)
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 0 / totalAllocPoint
                                        _6788 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_6788 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6788 + 36 len 28]
                                        if ext_code.size(rewardTokenAddress) <= 0:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        _6803 = mem[_6788]
                                        u = _6788 + 32
                                        v = _6787 + 132
                                        t = mem[_6788]
                                        while t >= 32:
                                            mem[v] = mem[u]
                                            rewardPerBlock = s / 100
                                            u = u + 32
                                            v = v + 32
                                            t = t - 32
                                            continue 
                                        mem[_6787 + floor32(mem[_6788]) + 132] = mem[_6788 + -(mem[_6788] % 32) + floor32(mem[_6788]) + 64 len mem[_6788] % 32] or Mask(8 * -(mem[_6788] % 32) + 32, -(8 * -(mem[_6788] % 32) + 32) + 256, mem[_6787 + floor32(mem[_6788]) + 132])
                                        call rewardTokenAddress.mem[_6787 + 132 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_6787 + 136 len _6803 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96] > 0:
                                                require mem[96] >= 32
                                                if not mem[128]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_6787 + 242 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6787 + 233 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            mem[64] = _6787 + ceil32(return_data.size) + 133
                                            mem[_6787 + 132] = return_data.size
                                            mem[_6787 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[_6787 + 164]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[_6787 + ceil32(return_data.size) + 243 len 22]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[_6787 + ceil32(return_data.size) + 234 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _6790 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = 0 / totalAllocPoint
                                            _6791 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6791 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6791 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _6810 = mem[_6791]
                                            u = _6791 + 32
                                            v = _6790 + 132
                                            t = mem[_6791]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_6790 + floor32(mem[_6791]) + 132] = mem[_6791 + -(mem[_6791] % 32) + floor32(mem[_6791]) + 64 len mem[_6791] % 32] or Mask(8 * -(mem[_6791] % 32) + 32, -(8 * -(mem[_6791] % 32) + 32) + 256, mem[_6790 + floor32(mem[_6791]) + 132])
                                            call rewardTokenAddress.mem[_6790 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6790 + 136 len _6810 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6790 + 242 len 22]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6790 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _6790 + ceil32(return_data.size) + 133
                                                mem[_6790 + 132] = return_data.size
                                                mem[_6790 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_6790 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6790 + ceil32(return_data.size) + 243 len 22]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_6790 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                        if ext_call.return_data[0] > 0:
                                            _6793 = mem[64]
                                            mem[mem[64] + 36] = address(rewardSenderAddress)
                                            mem[mem[64] + 68] = this.address
                                            mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            _6794 = mem[64]
                                            mem[mem[64]] = 100
                                            mem[64] = mem[64] + 132
                                            mem[_6794 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_6794 + 36 len 28]
                                            if ext_code.size(rewardTokenAddress) <= 0:
                                                revert with 0, 'SafeERC20: call to non-contract'
                                            _6814 = mem[_6794]
                                            u = _6794 + 32
                                            v = _6793 + 132
                                            t = mem[_6794]
                                            while t >= 32:
                                                mem[v] = mem[u]
                                                rewardPerBlock = s / 100
                                                u = u + 32
                                                v = v + 32
                                                t = t - 32
                                                continue 
                                            mem[_6793 + floor32(mem[_6794]) + 132] = mem[_6794 + -(mem[_6794] % 32) + floor32(mem[_6794]) + 64 len mem[_6794] % 32] or Mask(8 * -(mem[_6794] % 32) + 32, -(8 * -(mem[_6794] % 32) + 32) + 256, mem[_6793 + floor32(mem[_6794]) + 132])
                                            call rewardTokenAddress.mem[_6793 + 132 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_6793 + 136 len _6814 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if mem[96] > 0:
                                                    require mem[96] >= 32
                                                    if not mem[128]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6793 + 242 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_6793 + 233 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                mem[64] = _6793 + ceil32(return_data.size) + 133
                                                mem[_6793 + 132] = return_data.size
                                                mem[_6793 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size > 0:
                                                    require return_data.size >= 32
                                                    if not mem[_6793 + 164]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[_6793 + ceil32(return_data.size) + 243 len 22]
                                                if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[_6793 + ceil32(return_data.size) + 234 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                        rewardPerBlock = s / 100
                        idx = idx + 1
                        continue 
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require idx < poolInfo.length
                mem[0] = 8
                if block.number > poolInfo[idx].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(poolInfo[idx].field_0)
                    staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint > 0:
                            if ext_call.return_data[0] > 0:
                                _2418 = mem[64]
                                mem[mem[64] + 36] = address(rewardSenderAddress)
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 0 / totalAllocPoint
                                _2419 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_2419 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2419 + 36 len 28]
                                if ext_code.size(rewardTokenAddress) <= 0:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _2430 = mem[_2419]
                                t = _2419 + 32
                                u = _2418 + 132
                                s = mem[_2419]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2418 + floor32(mem[_2419]) + 132] = mem[_2419 + -(mem[_2419] % 32) + floor32(mem[_2419]) + 64 len mem[_2419] % 32] or Mask(8 * -(mem[_2419] % 32) + 32, -(8 * -(mem[_2419] % 32) + 32) + 256, mem[_2418 + floor32(mem[_2419]) + 132])
                                call rewardTokenAddress.mem[_2418 + 132 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2418 + 136 len _2430 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96] > 0:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2418 + 242 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2418 + 233 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    mem[64] = _2418 + ceil32(return_data.size) + 133
                                    mem[_2418 + 132] = return_data.size
                                    mem[_2418 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[_2418 + 164]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2418 + ceil32(return_data.size) + 243 len 22]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[_2418 + ceil32(return_data.size) + 234 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _2423 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 0 / totalAllocPoint
                                    _2424 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_2424 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2424 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _2436 = mem[_2424]
                                    t = _2424 + 32
                                    u = _2423 + 132
                                    s = mem[_2424]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2423 + floor32(mem[_2424]) + 132] = mem[_2424 + -(mem[_2424] % 32) + floor32(mem[_2424]) + 64 len mem[_2424] % 32] or Mask(8 * -(mem[_2424] % 32) + 32, -(8 * -(mem[_2424] % 32) + 32) + 256, mem[_2423 + floor32(mem[_2424]) + 132])
                                    call rewardTokenAddress.mem[_2423 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2423 + 136 len _2436 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2423 + 242 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2423 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _2423 + ceil32(return_data.size) + 133
                                        mem[_2423 + 132] = return_data.size
                                        mem[_2423 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_2423 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2423 + ceil32(return_data.size) + 243 len 22]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * 0 / totalAllocPoint / 0 / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_2423 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint > 0:
                                if ext_call.return_data[0] > 0:
                                    _2426 = mem[64]
                                    mem[mem[64] + 36] = address(rewardSenderAddress)
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    _2427 = mem[64]
                                    mem[mem[64]] = 100
                                    mem[64] = mem[64] + 132
                                    mem[_2427 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_2427 + 36 len 28]
                                    if ext_code.size(rewardTokenAddress) <= 0:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    _2442 = mem[_2427]
                                    t = _2427 + 32
                                    u = _2426 + 132
                                    s = mem[_2427]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_2426 + floor32(mem[_2427]) + 132] = mem[_2427 + -(mem[_2427] % 32) + floor32(mem[_2427]) + 64 len mem[_2427] % 32] or Mask(8 * -(mem[_2427] % 32) + 32, -(8 * -(mem[_2427] % 32) + 32) + 256, mem[_2426 + floor32(mem[_2427]) + 132])
                                    call rewardTokenAddress.mem[_2426 + 132 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_2426 + 136 len _2442 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96] > 0:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2426 + 242 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_2426 + 233 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        mem[64] = _2426 + ceil32(return_data.size) + 133
                                        mem[_2426 + 132] = return_data.size
                                        mem[_2426 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[_2426 + 164]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[_2426 + ceil32(return_data.size) + 243 len 22]
                                        if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != sub_900e3151:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[_2426 + ceil32(return_data.size) + 234 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += sub_900e3151 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF3F7[stor8.length] = arg1
    if block.number > startBlock:
        storF3F7[stor8.length] = block.number
    else:
        storF3F7[stor8.length] = startBlock
    storF3F7[stor8.length] = 0
    poolIndex[address(arg2)] = poolInfo.length
}



}
