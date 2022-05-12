contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
uint256 stor1;
address rewardTokenAddress;
uint256 sub_d780cbb2;
uint256 stor4;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
mapping of uint8 stor9;
uint256 stor10;
uint256 remainingRewards;
address stakeTokenAddress;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function sub_36bdced7(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function stakeToken() payable {
    return stakeTokenAddress
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function remainingRewards() payable {
    return remainingRewards
}

function sub_d780cbb2(?) payable {
    return sub_d780cbb2
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1ed4e9e0(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor9[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
    require 0 < poolInfo.length
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    if userInfo[msg.sender].field_0 > uint256(poolInfo.field_1024):
        revert with 0, 'SafeMath: subtraction overflow'
    uint256(poolInfo.field_1024) -= userInfo[msg.sender].field_0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(poolInfo.field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[msg.sender].field_32
    mem[324 len 0] = 0
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
    emit EmergencyWithdraw(userInfo[msg.sender].field_0, msg.sender);
}

function sub_e388583f(?) payable {
    require calldata.size - 4 >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
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
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg1 + remainingRewards < remainingRewards:
        revert with 0, 'SafeMath: addition overflow'
    remainingRewards += arg1
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardTokenAddress != stakeTokenAddress:
        if stor4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor4
        sub_d780cbb2 = ext_call.return_data[0] / stor4
    else:
        if ext_call.return_data[0] > stor10:
            if stor10 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor4
            sub_d780cbb2 = ext_call.return_data[0] - stor10 / stor4
}

function updatePool() payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardTokenAddress != stakeTokenAddress:
        if stor4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor4
        sub_d780cbb2 = ext_call.return_data[0] / stor4
    else:
        if ext_call.return_data[0] > stor10:
            if stor10 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor4
            sub_d780cbb2 = ext_call.return_data[0] - stor10 / stor4
    require 0 < poolInfo.length
    if block.timestamp > uint256(poolInfo.field_512):
        if uint256(poolInfo.field_1024):
            if uint256(poolInfo.field_256):
                if remainingRewards:
                    if block.timestamp < uint256(poolInfo.field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint < remainingRewards:
                            if 0 / totalAllocPoint > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards -= 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                        else:
                            if remainingRewards > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards = 0
                            if not remainingRewards:
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * remainingRewards / remainingRewards != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    else:
                        if uint256(poolInfo.field_512) > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - uint256(poolInfo.field_512):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint < remainingRewards:
                                if 0 / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                        else:
                            if (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2) / block.timestamp - uint256(poolInfo.field_512) != sub_d780cbb2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint < remainingRewards:
                                    if 0 / totalAllocPoint > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards -= 0 / totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                                else:
                                    if remainingRewards > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards = 0
                                    if not remainingRewards:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * remainingRewards / remainingRewards != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                            else:
                                if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2) != uint256(poolInfo.field_256):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                                    if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards -= (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint
                                    if not (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                                else:
                                    if remainingRewards > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards = 0
                                    if not remainingRewards:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * remainingRewards / remainingRewards != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
        uint256(poolInfo.field_512) = block.timestamp
}

function updateEmissionRate(uint256 arg1) payable {
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
    if rewardTokenAddress != stakeTokenAddress:
        if stor4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor4
        sub_d780cbb2 = ext_call.return_data[0] / stor4
    else:
        if ext_call.return_data[0] > stor10:
            if stor10 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor4
            sub_d780cbb2 = ext_call.return_data[0] - stor10 / stor4
    require 0 < poolInfo.length
    if block.timestamp > uint256(poolInfo.field_512):
        if uint256(poolInfo.field_1024):
            if uint256(poolInfo.field_256):
                if remainingRewards:
                    if block.timestamp < uint256(poolInfo.field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint < remainingRewards:
                            if 0 / totalAllocPoint > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards -= 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                        else:
                            if remainingRewards > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards = 0
                            if not remainingRewards:
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * remainingRewards / remainingRewards != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    else:
                        if uint256(poolInfo.field_512) > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - uint256(poolInfo.field_512):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint < remainingRewards:
                                if 0 / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                        else:
                            if (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2) / block.timestamp - uint256(poolInfo.field_512) != sub_d780cbb2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint < remainingRewards:
                                    if 0 / totalAllocPoint > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards -= 0 / totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                                else:
                                    if remainingRewards > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards = 0
                                    if not remainingRewards:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * remainingRewards / remainingRewards != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                            else:
                                if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2) != uint256(poolInfo.field_256):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                                    if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards -= (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint
                                    if not (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                                else:
                                    if remainingRewards > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards = 0
                                    if not remainingRewards:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * remainingRewards / remainingRewards != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
        uint256(poolInfo.field_512) = block.timestamp
    sub_d780cbb2 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.timestamp <= uint256(poolInfo.field_512):
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
    if block.timestamp < uint256(poolInfo.field_512):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if 0 / totalAllocPoint < remainingRewards:
            if not 0 / totalAllocPoint:
                if uint256(poolInfo.field_1024) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require uint256(poolInfo.field_1024)
                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if uint256(poolInfo.field_1024) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require uint256(poolInfo.field_1024)
            if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    else:
        if uint256(poolInfo.field_512) > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - uint256(poolInfo.field_512):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if 0 / totalAllocPoint < remainingRewards:
                if not 0 / totalAllocPoint:
                    if uint256(poolInfo.field_1024) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(poolInfo.field_1024)
                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[address(arg1)].field_256
                    if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint256(poolInfo.field_1024) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require uint256(poolInfo.field_1024)
                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        else:
            if (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2) / block.timestamp - uint256(poolInfo.field_512) != sub_d780cbb2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if 0 / totalAllocPoint < remainingRewards:
                    if not 0 / totalAllocPoint:
                        if uint256(poolInfo.field_1024) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(poolInfo.field_1024)
                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[address(arg1)].field_0:
                            if userInfo[address(arg1)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[address(arg1)].field_256
                        if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if uint256(poolInfo.field_1024) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(poolInfo.field_1024)
                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[address(arg1)].field_256
                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(arg1)].field_256 > (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
            else:
                if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2) != uint256(poolInfo.field_256):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                    if not (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint:
                        if uint256(poolInfo.field_1024) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(poolInfo.field_1024)
                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[address(arg1)].field_0:
                            if userInfo[address(arg1)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[address(arg1)].field_256
                        if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
                    if 10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if uint256(poolInfo.field_1024) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(poolInfo.field_1024)
                    if (10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[address(arg1)].field_256
                    if (10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(arg1)].field_256 > (10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if not remainingRewards:
        if uint256(poolInfo.field_1024) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require uint256(poolInfo.field_1024)
        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if 10^12 * remainingRewards / remainingRewards != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if uint256(poolInfo.field_1024) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require uint256(poolInfo.field_1024)
    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    if (10^12 * remainingRewards / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_256 > (10^12 * remainingRewards / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * remainingRewards / uint256(poolInfo.field_1024) * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function harvestFor(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 != msg.sender:
        if arg1 != tx.origin:
            revert with 0, 'harvestFor: FORBIDDEN'
    require 0 < poolInfo.length
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardTokenAddress != stakeTokenAddress:
        if stor4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor4
        sub_d780cbb2 = ext_call.return_data[0] / stor4
    else:
        if ext_call.return_data[0] > stor10:
            if stor10 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor4
            sub_d780cbb2 = ext_call.return_data[0] - stor10 / stor4
    require 0 < poolInfo.length
    if block.timestamp > uint256(poolInfo.field_512):
        if uint256(poolInfo.field_1024):
            if uint256(poolInfo.field_256):
                if remainingRewards:
                    if block.timestamp < uint256(poolInfo.field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint < remainingRewards:
                            if 0 / totalAllocPoint > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards -= 0 / totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                        else:
                            if remainingRewards > remainingRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            remainingRewards = 0
                            if not remainingRewards:
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                            else:
                                if 10^12 * remainingRewards / remainingRewards != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if uint256(poolInfo.field_1024) <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require uint256(poolInfo.field_1024)
                                if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                    else:
                        if uint256(poolInfo.field_512) > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - uint256(poolInfo.field_512):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint < remainingRewards:
                                if 0 / totalAllocPoint > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards -= 0 / totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                            else:
                                if remainingRewards > remainingRewards:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                remainingRewards = 0
                                if not remainingRewards:
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                else:
                                    if 10^12 * remainingRewards / remainingRewards != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if uint256(poolInfo.field_1024) <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require uint256(poolInfo.field_1024)
                                    if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                        else:
                            if (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2) / block.timestamp - uint256(poolInfo.field_512) != sub_d780cbb2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint < remainingRewards:
                                    if 0 / totalAllocPoint > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards -= 0 / totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / uint256(poolInfo.field_1024)
                                else:
                                    if remainingRewards > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards = 0
                                    if not remainingRewards:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * remainingRewards / remainingRewards != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
                            else:
                                if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / (block.timestamp * sub_d780cbb2) - (uint256(poolInfo.field_512) * sub_d780cbb2) != uint256(poolInfo.field_256):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint < remainingRewards:
                                    if (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards -= (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint
                                    if not (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * (block.timestamp * sub_d780cbb2 * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * sub_d780cbb2 * uint256(poolInfo.field_256)) / totalAllocPoint / uint256(poolInfo.field_1024)
                                else:
                                    if remainingRewards > remainingRewards:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    remainingRewards = 0
                                    if not remainingRewards:
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (0 / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_1024)
                                    else:
                                        if 10^12 * remainingRewards / remainingRewards != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if uint256(poolInfo.field_1024) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require uint256(poolInfo.field_1024)
                                        if (10^12 * remainingRewards / uint256(poolInfo.field_1024)) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^12 * remainingRewards / uint256(poolInfo.field_1024)
        uint256(poolInfo.field_512) = block.timestamp
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
                require ext_code.size(rewardTokenAddress)
                if ext_call.return_data[0] < -userInfo[address(arg1)].field_256:
                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                else:
                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), -userInfo[address(arg1)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65,
                                mem[199 len 29]
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
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
                require ext_code.size(rewardTokenAddress)
                if ext_call.return_data[0] < (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256:
                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                else:
                    call rewardTokenAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe736166655265776172645472616e736665723a207472616e73666572206661696c65,
                                mem[199 len 29]
                if not userInfo[address(arg1)].field_0:
                    userInfo[address(arg1)].field_256 = 0
                else:
                    if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[address(arg1)].field_256 = uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12
                emit Harvest(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256), arg1);
    stor1 = 1
}



}
