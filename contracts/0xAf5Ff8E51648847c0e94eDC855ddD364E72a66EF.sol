contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const sub_1da6b013(?) = 2000 * 10^18

const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const MAXIMUM_DEPOSIT_FEE_RATE = 1000

const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
uint256 stor1;
address sub_2d99c7e5Address;
address operatorAddress;
address devAddress;
address feeAddress;
uint256 sub_06ceb733;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
uint256 sub_3ae80bed;
uint16 referralCommissionRate; offset 160
address sub_b7587c4cAddress;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint16 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;

function sub_06ceb733(?) payable {
    return sub_06ceb733
}

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

function sub_2d99c7e5(?) payable {
    return sub_2d99c7e5Address
}

function devAddress() payable {
    return devAddress
}

function sub_3ae80bed(?) payable {
    return sub_3ae80bed
}

function feeAddress() payable {
    return feeAddress
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function operator() payable {
    return operatorAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function sub_b7587c4c(?) payable {
    return sub_b7587c4cAddress
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_474d72c7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b7587c4cAddress = arg1
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.number < startBlock:
        return block.number >= startBlock
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: ZERO'
    feeAddress = arg1
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'setDevAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setDevAddress: ZERO'
    devAddress = arg1
}

function startFarming() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0, 'Error::Farm started already'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    startBlock = block.number
}

function remainRewards() payable {
    require ext_code.size(sub_2d99c7e5Address)
    staticcall sub_2d99c7e5Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_3ae80bed > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - sub_3ae80bed)
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg2 - arg1)
}

function setReferralCommissionRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x77736574526566657272616c436f6d6d697373696f6e526174653a20726566657272616c20636f6d6d697373696f6e207261746520746f6f20686967,
                    mem[224 len 4]
    referralCommissionRate = arg1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x685472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[214 len 14]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x68456d657267656e637957697468647261773a20506f6f6c20746f74616c204c50206e6f7420656e6f7567,
                    mem[207 len 21]
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    userInfo[arg1][msg.sender].field_512 = 0
    userInfo[arg1][msg.sender].field_768 = 0
    poolInfo[arg1].field_1536 -= userInfo[arg1][msg.sender].field_0
    if sub_2d99c7e5Address == poolInfo[arg1].field_0:
        if userInfo[arg1][msg.sender].field_0 > sub_3ae80bed:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_3ae80bed -= userInfo[arg1][msg.sender].field_0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number > poolInfo[idx].field_512:
            if not poolInfo[idx].field_1536:
                poolInfo[idx].field_512 = block.number
            else:
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                else:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1536 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1536
                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[idx].field_1536 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1536
                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                        poolInfo[idx].field_512 = block.number
                        if 0 / totalAllocPoint / 10 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) / block.number - poolInfo[idx].field_512 != sub_06ceb733:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.number
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) != poolInfo[idx].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                else:
                                    if 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.number
                                if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    require ext_code.size(sub_2d99c7e5Address)
    staticcall sub_2d99c7e5Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_3ae80bed:
        require ext_code.size(sub_2d99c7e5Address)
        staticcall sub_2d99c7e5Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_3ae80bed > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 >= ext_call.return_data[0] - sub_3ae80bed:
            require ext_code.size(sub_2d99c7e5Address)
            call sub_2d99c7e5Address.0xa9059cbb with:
                 gas gas_remaining wei
                args devAddress, ext_call.return_data[0] - sub_3ae80bed
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 2000 * 10^18:
        revert with 0, 'OBERON per block too high'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number > poolInfo[idx].field_512:
            if not poolInfo[idx].field_1536:
                poolInfo[idx].field_512 = block.number
            else:
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                else:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1536 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1536
                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[idx].field_1536 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1536
                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                        poolInfo[idx].field_512 = block.number
                        if 0 / totalAllocPoint / 10 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) / block.number - poolInfo[idx].field_512 != sub_06ceb733:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.number
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) != poolInfo[idx].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                else:
                                    if 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.number
                                if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    require ext_code.size(sub_2d99c7e5Address)
    staticcall sub_2d99c7e5Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_3ae80bed:
        require ext_code.size(sub_2d99c7e5Address)
        staticcall sub_2d99c7e5Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_3ae80bed > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 >= ext_call.return_data[0] - sub_3ae80bed:
            require ext_code.size(sub_2d99c7e5Address)
            call sub_2d99c7e5Address.0xa9059cbb with:
                 gas gas_remaining wei
                args devAddress, ext_call.return_data[0] - sub_3ae80bed
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    emit EmissionRateUpdated(sub_06ceb733, arg1, msg.sender);
    sub_06ceb733 = arg1
}

function updateAllocPoint(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_512 = block.number
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                    else:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.number
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) / block.number - poolInfo[idx].field_512 != sub_06ceb733:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.number
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) != poolInfo[idx].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    else:
                                        if 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.number
                                    if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        require ext_code.size(sub_2d99c7e5Address)
        staticcall sub_2d99c7e5Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_3ae80bed:
            require ext_code.size(sub_2d99c7e5Address)
            staticcall sub_2d99c7e5Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_3ae80bed > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0] - sub_3ae80bed:
                require ext_code.size(sub_2d99c7e5Address)
                call sub_2d99c7e5Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args devAddress, ext_call.return_data[0] - sub_3ae80bed
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 1000:
        revert with 0, 'set: deposit fee too high'
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_512 = block.number
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                    else:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.number
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) / block.number - poolInfo[idx].field_512 != sub_06ceb733:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.number
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) != poolInfo[idx].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    else:
                                        if 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.number
                                    if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        require ext_code.size(sub_2d99c7e5Address)
        staticcall sub_2d99c7e5Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_3ae80bed:
            require ext_code.size(sub_2d99c7e5Address)
            staticcall sub_2d99c7e5Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_3ae80bed > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0] - sub_3ae80bed:
                require ext_code.size(sub_2d99c7e5Address)
                call sub_2d99c7e5Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args devAddress, ext_call.return_data[0] - sub_3ae80bed
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    poolInfo[arg1].field_1280 = arg4
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 1000:
        revert with 0, 'add: deposit fee too high'
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_512 = block.number
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.number
                    else:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1536
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_512 = block.number
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1536 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1536
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.number
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) / block.number - poolInfo[idx].field_512 != sub_06ceb733:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.number
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / (block.number * sub_06ceb733) - (poolInfo[idx].field_512 * sub_06ceb733) != poolInfo[idx].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    else:
                                        if 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if poolInfo[idx].field_1536 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1536
                                        if (10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.number
                                    if (block.number * sub_06ceb733 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_06ceb733 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        require ext_code.size(sub_2d99c7e5Address)
        staticcall sub_2d99c7e5Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_3ae80bed:
            require ext_code.size(sub_2d99c7e5Address)
            staticcall sub_2d99c7e5Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_3ae80bed > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0] - sub_3ae80bed:
                require ext_code.size(sub_2d99c7e5Address)
                call sub_2d99c7e5Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args devAddress, ext_call.return_data[0] - sub_3ae80bed
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storA66C[stor7.length] = arg1
    if block.number > startBlock:
        storA66C[stor7.length] = block.number
    else:
        storA66C[stor7.length] = startBlock
    storA66C[stor7.length] = 0
    storA66C[stor7.length] = arg3
    storA66C[stor7.length] = arg4
    storA66C[stor7.length] = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1536:
            poolInfo[arg1].field_512 = block.number
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.number
            else:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1536 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1536
                        if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[arg1].field_1536 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1536
                        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                    poolInfo[arg1].field_512 = block.number
                    require ext_code.size(sub_2d99c7e5Address)
                    staticcall sub_2d99c7e5Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > sub_3ae80bed:
                        require ext_code.size(sub_2d99c7e5Address)
                        staticcall sub_2d99c7e5Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_3ae80bed > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_3ae80bed:
                            require ext_code.size(sub_2d99c7e5Address)
                            call sub_2d99c7e5Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devAddress, ext_call.return_data[0] - sub_3ae80bed
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_2d99c7e5Address)
                                call sub_2d99c7e5Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1536 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1536
                            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1536 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1536
                            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                        poolInfo[arg1].field_512 = block.number
                        require ext_code.size(sub_2d99c7e5Address)
                        staticcall sub_2d99c7e5Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > sub_3ae80bed:
                            require ext_code.size(sub_2d99c7e5Address)
                            staticcall sub_2d99c7e5Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_3ae80bed > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_3ae80bed:
                                require ext_code.size(sub_2d99c7e5Address)
                                call sub_2d99c7e5Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devAddress, ext_call.return_data[0] - sub_3ae80bed
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                if 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_2d99c7e5Address)
                                    call sub_2d99c7e5Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                    else:
                        if (block.number * sub_06ceb733) - (poolInfo[arg1].field_512 * sub_06ceb733) / block.number - poolInfo[arg1].field_512 != sub_06ceb733:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * sub_06ceb733) - (poolInfo[arg1].field_512 * sub_06ceb733):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1536
                                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1536
                                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                            poolInfo[arg1].field_512 = block.number
                            require ext_code.size(sub_2d99c7e5Address)
                            staticcall sub_2d99c7e5Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > sub_3ae80bed:
                                require ext_code.size(sub_2d99c7e5Address)
                                staticcall sub_2d99c7e5Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_3ae80bed > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_3ae80bed:
                                    require ext_code.size(sub_2d99c7e5Address)
                                    call sub_2d99c7e5Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devAddress, ext_call.return_data[0] - sub_3ae80bed
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    if 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_2d99c7e5Address)
                                        call sub_2d99c7e5Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            if (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / (block.number * sub_06ceb733) - (poolInfo[arg1].field_512 * sub_06ceb733) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if poolInfo[arg1].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1536
                                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                            else:
                                if 10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1536 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1536
                                if (10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
                            poolInfo[arg1].field_512 = block.number
                            require ext_code.size(sub_2d99c7e5Address)
                            staticcall sub_2d99c7e5Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > sub_3ae80bed:
                                require ext_code.size(sub_2d99c7e5Address)
                                staticcall sub_2d99c7e5Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_3ae80bed > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_3ae80bed:
                                    require ext_code.size(sub_2d99c7e5Address)
                                    call sub_2d99c7e5Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devAddress, ext_call.return_data[0] - sub_3ae80bed
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    if (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_2d99c7e5Address)
                                        call sub_2d99c7e5Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devAddress, (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
}

function pendingOberon(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1536:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1536 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1536
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1536
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1536 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1536
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1536
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_06ceb733) - (poolInfo[arg1].field_512 * sub_06ceb733) / block.number - poolInfo[arg1].field_512 != sub_06ceb733:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_06ceb733) - (poolInfo[arg1].field_512 * sub_06ceb733):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1536 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1536
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1536
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / (block.number * sub_06ceb733) - (poolInfo[arg1].field_512 * sub_06ceb733) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint:
        if poolInfo[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1536
        if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if poolInfo[arg1].field_1536 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1536
    if (10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
    if (10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.number * sub_06ceb733 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_06ceb733 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}



}
