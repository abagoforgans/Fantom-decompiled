contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const sub_4318a211(?) = 2000 * 10^18

const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const MAXIMUM_DEPOSIT_FEE_RATE = 1000

const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
uint256 stor1;
address sub_365cbfbfAddress;
address operatorAddress;
address devAddress;
address feeAddress;
uint256 sub_6a425bf3;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
uint256 totalLockedUpRewards;
uint256 sub_867f8ea1;
uint16 referralCommissionRate; offset 160
address sub_755f8a02Address;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint16 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;

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

function sub_365cbfbf(?) payable {
    return sub_365cbfbfAddress
}

function devAddress() payable {
    return devAddress
}

function feeAddress() payable {
    return feeAddress
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function operator() payable {
    return operatorAddress
}

function sub_6a425bf3(?) payable {
    return sub_6a425bf3
}

function sub_755f8a02(?) payable {
    return sub_755f8a02Address
}

function startTime() payable {
    return startTime
}

function sub_867f8ea1(?) payable {
    return sub_867f8ea1
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

function referralCommissionRate() payable {
    return referralCommissionRate
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'hOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d2e57212(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'hOwnable: caller is not the owne'
    sub_755f8a02Address = arg1
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < startTime:
        return block.timestamp >= startTime
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > startTime:
        if arg2 >= startTime:
            return (arg2 - arg1)
    else:
        if arg2 >= startTime:
            return (arg2 - startTime)
    ('lt', ('param', 'arg2'), ('stor', ('name', 'startTime', 10)))
    return 0
}

function startFarming() payable {
    if owner != msg.sender:
        revert with 0, 'hOwnable: caller is not the owne'
    if block.timestamp >= startTime:
        revert with 0, 'Error::Farm started already'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    startTime = block.timestamp
}

function remainRewards() payable {
    require ext_code.size(sub_365cbfbfAddress)
    staticcall sub_365cbfbfAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_867f8ea1 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - sub_867f8ea1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'hOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
                    0x72456d657267656e637957697468647261773a20506f6f6c20746f74616c204c50206e6f7420656e6f7567,
                    mem[207 len 21]
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    userInfo[arg1][msg.sender].field_512 = 0
    userInfo[arg1][msg.sender].field_768 = 0
    poolInfo[arg1].field_1536 -= userInfo[arg1][msg.sender].field_0
    if sub_365cbfbfAddress != poolInfo[arg1].field_0:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[arg1][msg.sender].field_0, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
    else:
        if userInfo[arg1][msg.sender].field_0 > sub_867f8ea1:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_867f8ea1 -= userInfo[arg1][msg.sender].field_0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[arg1][msg.sender].field_0, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function pendingToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
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
                        0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < startTime:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > startTime:
        if not block.timestamp - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1536:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
                if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * sub_6a425bf3) - (poolInfo[arg1].field_512 * sub_6a425bf3) / block.timestamp - poolInfo[arg1].field_512 != sub_6a425bf3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * sub_6a425bf3) - (poolInfo[arg1].field_512 * sub_6a425bf3):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1536:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
                if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / (block.timestamp * sub_6a425bf3) - (poolInfo[arg1].field_512 * sub_6a425bf3) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not block.timestamp - startTime:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) / block.timestamp - startTime != sub_6a425bf3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint:
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not poolInfo[arg1].field_1536:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
    if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        if not poolInfo[arg1].field_1536:
            poolInfo[arg1].field_512 = block.timestamp
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.timestamp
            else:
                if poolInfo[arg1].field_512 > startTime:
                    if block.timestamp < startTime:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            if not poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                        poolInfo[arg1].field_512 = block.timestamp
                        require ext_code.size(sub_365cbfbfAddress)
                        staticcall sub_365cbfbfAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > sub_867f8ea1:
                            require ext_code.size(sub_365cbfbfAddress)
                            staticcall sub_365cbfbfAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_867f8ea1 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_867f8ea1:
                                require ext_code.size(sub_365cbfbfAddress)
                                call sub_365cbfbfAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devAddress, ext_call.return_data[0] - sub_867f8ea1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                if 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_365cbfbfAddress)
                                    call sub_365cbfbfAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                    else:
                        if not block.timestamp - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                if not poolInfo[arg1].field_1536:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not poolInfo[arg1].field_1536:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                            poolInfo[arg1].field_512 = block.timestamp
                            require ext_code.size(sub_365cbfbfAddress)
                            staticcall sub_365cbfbfAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > sub_867f8ea1:
                                require ext_code.size(sub_365cbfbfAddress)
                                staticcall sub_365cbfbfAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_867f8ea1 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_867f8ea1:
                                    require ext_code.size(sub_365cbfbfAddress)
                                    call sub_365cbfbfAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devAddress, ext_call.return_data[0] - sub_867f8ea1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    if 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_365cbfbfAddress)
                                        call sub_365cbfbfAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            if (block.timestamp * sub_6a425bf3) - (poolInfo[arg1].field_512 * sub_6a425bf3) / block.timestamp - poolInfo[arg1].field_512 != sub_6a425bf3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * sub_6a425bf3) - (poolInfo[arg1].field_512 * sub_6a425bf3):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    if not poolInfo[arg1].field_1536:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not poolInfo[arg1].field_1536:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                                poolInfo[arg1].field_512 = block.timestamp
                                require ext_code.size(sub_365cbfbfAddress)
                                staticcall sub_365cbfbfAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > sub_867f8ea1:
                                    require ext_code.size(sub_365cbfbfAddress)
                                    staticcall sub_365cbfbfAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_867f8ea1 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_867f8ea1:
                                        require ext_code.size(sub_365cbfbfAddress)
                                        call sub_365cbfbfAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devAddress, ext_call.return_data[0] - sub_867f8ea1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    else:
                                        if 0 / totalAllocPoint / 10:
                                            require ext_code.size(sub_365cbfbfAddress)
                                            call sub_365cbfbfAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                            else:
                                if (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / (block.timestamp * sub_6a425bf3) - (poolInfo[arg1].field_512 * sub_6a425bf3) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not poolInfo[arg1].field_1536:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                                else:
                                    if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not poolInfo[arg1].field_1536:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
                                poolInfo[arg1].field_512 = block.timestamp
                                require ext_code.size(sub_365cbfbfAddress)
                                staticcall sub_365cbfbfAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > sub_867f8ea1:
                                    require ext_code.size(sub_365cbfbfAddress)
                                    staticcall sub_365cbfbfAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_867f8ea1 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_867f8ea1:
                                        require ext_code.size(sub_365cbfbfAddress)
                                        call sub_365cbfbfAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devAddress, ext_call.return_data[0] - sub_867f8ea1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    else:
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / 10:
                                            require ext_code.size(sub_365cbfbfAddress)
                                            call sub_365cbfbfAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devAddress, (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                else:
                    if block.timestamp < startTime:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            if not poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not poolInfo[arg1].field_1536:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                        poolInfo[arg1].field_512 = block.timestamp
                        require ext_code.size(sub_365cbfbfAddress)
                        staticcall sub_365cbfbfAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > sub_867f8ea1:
                            require ext_code.size(sub_365cbfbfAddress)
                            staticcall sub_365cbfbfAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_867f8ea1 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_867f8ea1:
                                require ext_code.size(sub_365cbfbfAddress)
                                call sub_365cbfbfAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devAddress, ext_call.return_data[0] - sub_867f8ea1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            else:
                                if 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_365cbfbfAddress)
                                    call sub_365cbfbfAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                    else:
                        if not block.timestamp - startTime:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                if not poolInfo[arg1].field_1536:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not poolInfo[arg1].field_1536:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                            poolInfo[arg1].field_512 = block.timestamp
                            require ext_code.size(sub_365cbfbfAddress)
                            staticcall sub_365cbfbfAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > sub_867f8ea1:
                                require ext_code.size(sub_365cbfbfAddress)
                                staticcall sub_365cbfbfAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_867f8ea1 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_867f8ea1:
                                    require ext_code.size(sub_365cbfbfAddress)
                                    call sub_365cbfbfAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devAddress, ext_call.return_data[0] - sub_867f8ea1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                else:
                                    if 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_365cbfbfAddress)
                                        call sub_365cbfbfAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                        else:
                            if (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) / block.timestamp - startTime != sub_6a425bf3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    if not poolInfo[arg1].field_1536:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not poolInfo[arg1].field_1536:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1536
                                poolInfo[arg1].field_512 = block.timestamp
                                require ext_code.size(sub_365cbfbfAddress)
                                staticcall sub_365cbfbfAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > sub_867f8ea1:
                                    require ext_code.size(sub_365cbfbfAddress)
                                    staticcall sub_365cbfbfAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_867f8ea1 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_867f8ea1:
                                        require ext_code.size(sub_365cbfbfAddress)
                                        call sub_365cbfbfAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devAddress, ext_call.return_data[0] - sub_867f8ea1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    else:
                                        if 0 / totalAllocPoint / 10:
                                            require ext_code.size(sub_365cbfbfAddress)
                                            call sub_365cbfbfAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                            else:
                                if (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                if not (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not poolInfo[arg1].field_1536:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1536
                                else:
                                    if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not poolInfo[arg1].field_1536:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
                                poolInfo[arg1].field_512 = block.timestamp
                                require ext_code.size(sub_365cbfbfAddress)
                                staticcall sub_365cbfbfAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > sub_867f8ea1:
                                    require ext_code.size(sub_365cbfbfAddress)
                                    staticcall sub_365cbfbfAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if sub_867f8ea1 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / 10 >= ext_call.return_data[0] - sub_867f8ea1:
                                        require ext_code.size(sub_365cbfbfAddress)
                                        call sub_365cbfbfAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devAddress, ext_call.return_data[0] - sub_867f8ea1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    else:
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / 10:
                                            require ext_code.size(sub_365cbfbfAddress)
                                            call sub_365cbfbfAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devAddress, (block.timestamp * sub_6a425bf3 * poolInfo[arg1].field_256) - (startTime * sub_6a425bf3 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.timestamp > poolInfo[idx].field_512:
            if not poolInfo[idx].field_1536:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > startTime:
                        if block.timestamp < startTime:
                            _444 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_444] = 26
                            mem[_444 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _444 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                _555 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_555] = 26
                                mem[_555 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _555 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                _778 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_778] = 26
                                mem[_778 + 32] = 'SafeMath: division by zero'
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _566 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_566] = 26
                                mem[_566 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _566 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                _787 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_787] = 26
                                mem[_787 + 32] = 'SafeMath: division by zero'
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not block.timestamp - poolInfo[idx].field_512:
                                _439 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_439] = 26
                                mem[_439 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _439 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _543 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_543] = 26
                                    mem[_543 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _543 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _757 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_757] = 26
                                    mem[_757 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _554 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_554] = 26
                                    mem[_554 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _554 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _777 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_777] = 26
                                    mem[_777 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) / block.timestamp - poolInfo[idx].field_512 != sub_6a425bf3:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3):
                                    _443 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_443] = 26
                                    mem[_443 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _443 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _553 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_553] = 26
                                        mem[_553 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _553 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _776 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_776] = 26
                                        mem[_776 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _562 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_562] = 26
                                        mem[_562 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _562 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _786 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_786] = 26
                                        mem[_786 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _447 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_447] = 26
                                    mem[_447 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _447 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _561 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_561] = 26
                                        mem[_561 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _561 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _785 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_785] = 26
                                        mem[_785 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _573 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_573] = 26
                                        mem[_573 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _573 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _791 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_791] = 26
                                        mem[_791 + 32] = 'SafeMath: division by zero'
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if block.timestamp < startTime:
                            _446 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_446] = 26
                            mem[_446 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _446 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                _560 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_560] = 26
                                mem[_560 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _560 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                _784 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_784] = 26
                                mem[_784 + 32] = 'SafeMath: division by zero'
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _572 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_572] = 26
                                mem[_572 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _572 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                _790 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_790] = 26
                                mem[_790 + 32] = 'SafeMath: division by zero'
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not block.timestamp - startTime:
                                _442 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_442] = 26
                                mem[_442 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _442 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _548 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_548] = 26
                                    mem[_548 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _548 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _769 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_769] = 26
                                    mem[_769 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _559 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_559] = 26
                                    mem[_559 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _559 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _783 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_783] = 26
                                    mem[_783 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) / block.timestamp - startTime != sub_6a425bf3:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3):
                                    _445 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_445] = 26
                                    mem[_445 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _445 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _558 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_558] = 26
                                        mem[_558 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _558 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _782 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_782] = 26
                                        mem[_782 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _568 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_568] = 26
                                        mem[_568 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _568 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _789 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_789] = 26
                                        mem[_789 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _451 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_451] = 26
                                    mem[_451 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _451 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _567 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_567] = 26
                                        mem[_567 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _567 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _788 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_788] = 26
                                        mem[_788 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _584 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_584] = 26
                                        mem[_584 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _584 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _792 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_792] = 26
                                        mem[_792 + 32] = 'SafeMath: division by zero'
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    require ext_code.size(sub_365cbfbfAddress)
    staticcall sub_365cbfbfAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_867f8ea1:
        require ext_code.size(sub_365cbfbfAddress)
        staticcall sub_365cbfbfAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_867f8ea1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 >= ext_call.return_data[0] - sub_867f8ea1:
            require ext_code.size(sub_365cbfbfAddress)
            call sub_365cbfbfAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args devAddress, ext_call.return_data[0] - sub_867f8ea1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 2000 * 10^18:
        revert with 0, 'BOOB per block too high'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.timestamp > poolInfo[idx].field_512:
            if not poolInfo[idx].field_1536:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if poolInfo[idx].field_512 > startTime:
                        if block.timestamp < startTime:
                            _460 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_460] = 26
                            mem[_460 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _460 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                _571 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_571] = 26
                                mem[_571 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _571 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                _794 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_794] = 26
                                mem[_794 + 32] = 'SafeMath: division by zero'
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _582 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_582] = 26
                                mem[_582 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _582 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                _803 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_803] = 26
                                mem[_803 + 32] = 'SafeMath: division by zero'
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not block.timestamp - poolInfo[idx].field_512:
                                _453 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_453] = 26
                                mem[_453 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _453 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _559 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_559] = 26
                                    mem[_559 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _559 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _773 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_773] = 26
                                    mem[_773 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _570 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_570] = 26
                                    mem[_570 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _570 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _793 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_793] = 26
                                    mem[_793 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) / block.timestamp - poolInfo[idx].field_512 != sub_6a425bf3:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3):
                                    _459 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_459] = 26
                                    mem[_459 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _459 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _569 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_569] = 26
                                        mem[_569 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _569 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _792 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_792] = 26
                                        mem[_792 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _578 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_578] = 26
                                        mem[_578 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _578 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _802 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_802] = 26
                                        mem[_802 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _463 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_463] = 26
                                    mem[_463 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _463 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _577 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_577] = 26
                                        mem[_577 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _577 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _801 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_801] = 26
                                        mem[_801 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _589 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_589] = 26
                                        mem[_589 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _589 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _807 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_807] = 26
                                        mem[_807 + 32] = 'SafeMath: division by zero'
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if block.timestamp < startTime:
                            _462 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_462] = 26
                            mem[_462 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _462 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                _576 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_576] = 26
                                mem[_576 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _576 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                _800 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_800] = 26
                                mem[_800 + 32] = 'SafeMath: division by zero'
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _588 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_588] = 26
                                mem[_588 + 32] = 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1536:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _588 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_512 = block.timestamp
                                _806 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_806] = 26
                                mem[_806 + 32] = 'SafeMath: division by zero'
                            if 0 / totalAllocPoint / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not block.timestamp - startTime:
                                _456 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_456] = 26
                                mem[_456 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _456 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _564 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_564] = 26
                                    mem[_564 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _564 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _785 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_785] = 26
                                    mem[_785 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _575 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_575] = 26
                                    mem[_575 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _575 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _799 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_799] = 26
                                    mem[_799 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) / block.timestamp - startTime != sub_6a425bf3:
                                    revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3):
                                    _461 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_461] = 26
                                    mem[_461 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _461 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _574 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_574] = 26
                                        mem[_574 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _574 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _798 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_798] = 26
                                        mem[_798 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _584 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_584] = 26
                                        mem[_584 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _584 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _805 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_805] = 26
                                        mem[_805 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _467 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_467] = 26
                                    mem[_467 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _467 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _583 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_583] = 26
                                        mem[_583 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _583 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _804 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_804] = 26
                                        mem[_804 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _600 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_600] = 26
                                        mem[_600 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _600 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _808 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_808] = 26
                                        mem[_808 + 32] = 'SafeMath: division by zero'
                                    if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    require ext_code.size(sub_365cbfbfAddress)
    staticcall sub_365cbfbfAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_867f8ea1:
        require ext_code.size(sub_365cbfbfAddress)
        staticcall sub_365cbfbfAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_867f8ea1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 >= ext_call.return_data[0] - sub_867f8ea1:
            require ext_code.size(sub_365cbfbfAddress)
            call sub_365cbfbfAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args devAddress, ext_call.return_data[0] - sub_867f8ea1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    emit EmissionRateUpdated(sub_6a425bf3, arg1, msg.sender);
    sub_6a425bf3 = arg1
}

function updateAllocPoint(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
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
            if block.timestamp > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.timestamp
                    else:
                        if poolInfo[idx].field_512 > startTime:
                            if block.timestamp < startTime:
                                _512 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_512] = 26
                                mem[_512 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _512 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _645 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_645] = 26
                                    mem[_645 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _645 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _868 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_868] = 26
                                    mem[_868 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _656 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_656] = 26
                                    mem[_656 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _656 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _877 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_877] = 26
                                    mem[_877 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not block.timestamp - poolInfo[idx].field_512:
                                    _507 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_507] = 26
                                    mem[_507 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _507 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _632 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_632] = 26
                                        mem[_632 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _632 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _847 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_847] = 26
                                        mem[_847 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _644 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_644] = 26
                                        mem[_644 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _644 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _867 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_867] = 26
                                        mem[_867 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) / block.timestamp - poolInfo[idx].field_512 != sub_6a425bf3:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3):
                                        _511 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_511] = 26
                                        mem[_511 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _511 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            _643 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_643] = 26
                                            mem[_643 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _643 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _866 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_866] = 26
                                            mem[_866 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _652 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_652] = 26
                                            mem[_652 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _652 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _876 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_876] = 26
                                            mem[_876 + 32] = 'SafeMath: division by zero'
                                        if 0 / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _519 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_519] = 26
                                        mem[_519 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _519 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _651 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_651] = 26
                                            mem[_651 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _651 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _875 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_875] = 26
                                            mem[_875 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _663 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_663] = 26
                                            mem[_663 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _663 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _881 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_881] = 26
                                            mem[_881 + 32] = 'SafeMath: division by zero'
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp < startTime:
                                _514 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_514] = 26
                                mem[_514 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _514 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _650 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_650] = 26
                                    mem[_650 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _650 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _874 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_874] = 26
                                    mem[_874 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _662 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_662] = 26
                                    mem[_662 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _662 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _880 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_880] = 26
                                    mem[_880 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not block.timestamp - startTime:
                                    _510 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_510] = 26
                                    mem[_510 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _510 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _637 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_637] = 26
                                        mem[_637 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _637 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _859 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_859] = 26
                                        mem[_859 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _649 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_649] = 26
                                        mem[_649 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _649 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _873 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_873] = 26
                                        mem[_873 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) / block.timestamp - startTime != sub_6a425bf3:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3):
                                        _513 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_513] = 26
                                        mem[_513 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _513 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            _648 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_648] = 26
                                            mem[_648 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _648 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _872 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_872] = 26
                                            mem[_872 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _658 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_658] = 26
                                            mem[_658 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _658 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _879 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_879] = 26
                                            mem[_879 + 32] = 'SafeMath: division by zero'
                                        if 0 / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _523 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_523] = 26
                                        mem[_523 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _523 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _657 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_657] = 26
                                            mem[_657 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _657 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _878 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_878] = 26
                                            mem[_878 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _674 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_674] = 26
                                            mem[_674 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _674 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _882 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_882] = 26
                                            mem[_882 + 32] = 'SafeMath: division by zero'
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        require ext_code.size(sub_365cbfbfAddress)
        staticcall sub_365cbfbfAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_867f8ea1:
            require ext_code.size(sub_365cbfbfAddress)
            staticcall sub_365cbfbfAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_867f8ea1 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0] - sub_867f8ea1:
                require ext_code.size(sub_365cbfbfAddress)
                call sub_365cbfbfAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args devAddress, ext_call.return_data[0] - sub_867f8ea1
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
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'hOwnable: caller is not the owne'
    if arg3 > 1000:
        revert with 0, 'set: deposit fee too high'
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.timestamp > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.timestamp
                    else:
                        if poolInfo[idx].field_512 > startTime:
                            if block.timestamp < startTime:
                                _528 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_528] = 26
                                mem[_528 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _528 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _663 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_663] = 26
                                    mem[_663 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _663 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _888 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_888] = 26
                                    mem[_888 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _675 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_675] = 26
                                    mem[_675 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _675 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _897 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_897] = 26
                                    mem[_897 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not block.timestamp - poolInfo[idx].field_512:
                                    _523 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_523] = 26
                                    mem[_523 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _523 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _650 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_650] = 26
                                        mem[_650 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _650 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _867 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_867] = 26
                                        mem[_867 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _662 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_662] = 26
                                        mem[_662 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _662 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _887 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_887] = 26
                                        mem[_887 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) / block.timestamp - poolInfo[idx].field_512 != sub_6a425bf3:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3):
                                        _527 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_527] = 26
                                        mem[_527 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _527 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            _661 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_661] = 26
                                            mem[_661 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _661 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _886 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_886] = 26
                                            mem[_886 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _671 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_671] = 26
                                            mem[_671 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _671 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _896 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_896] = 26
                                            mem[_896 + 32] = 'SafeMath: division by zero'
                                        if 0 / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _535 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_535] = 26
                                        mem[_535 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _535 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _670 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_670] = 26
                                            mem[_670 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _670 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _895 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_895] = 26
                                            mem[_895 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _683 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_683] = 26
                                            mem[_683 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _683 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _901 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_901] = 26
                                            mem[_901 + 32] = 'SafeMath: division by zero'
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp < startTime:
                                _530 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_530] = 26
                                mem[_530 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _530 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _668 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_668] = 26
                                    mem[_668 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _668 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _894 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_894] = 26
                                    mem[_894 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _681 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_681] = 26
                                    mem[_681 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _681 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _900 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_900] = 26
                                    mem[_900 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not block.timestamp - startTime:
                                    _526 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_526] = 26
                                    mem[_526 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _526 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _655 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_655] = 26
                                        mem[_655 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _655 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _879 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_879] = 26
                                        mem[_879 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _667 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_667] = 26
                                        mem[_667 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _667 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _893 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_893] = 26
                                        mem[_893 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) / block.timestamp - startTime != sub_6a425bf3:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3):
                                        _529 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_529] = 26
                                        mem[_529 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _529 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            _666 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_666] = 26
                                            mem[_666 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _666 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _892 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_892] = 26
                                            mem[_892 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _677 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_677] = 26
                                            mem[_677 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _677 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _899 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_899] = 26
                                            mem[_899 + 32] = 'SafeMath: division by zero'
                                        if 0 / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _539 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_539] = 26
                                        mem[_539 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _539 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _676 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_676] = 26
                                            mem[_676 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _676 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _898 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_898] = 26
                                            mem[_898 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _694 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_694] = 26
                                            mem[_694 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _694 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _902 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_902] = 26
                                            mem[_902 + 32] = 'SafeMath: division by zero'
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        require ext_code.size(sub_365cbfbfAddress)
        staticcall sub_365cbfbfAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_867f8ea1:
            require ext_code.size(sub_365cbfbfAddress)
            staticcall sub_365cbfbfAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_867f8ea1 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0] - sub_867f8ea1:
                require ext_code.size(sub_365cbfbfAddress)
                call sub_365cbfbfAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args devAddress, ext_call.return_data[0] - sub_867f8ea1
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
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'hOwnable: caller is not the owne'
    if arg3 > 1000:
        revert with 0, 'add: deposit fee too high'
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.timestamp > poolInfo[idx].field_512:
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if not poolInfo[idx].field_256:
                        poolInfo[idx].field_512 = block.timestamp
                    else:
                        if poolInfo[idx].field_512 > startTime:
                            if block.timestamp < startTime:
                                _552 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_552] = 26
                                mem[_552 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _552 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _703 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_703] = 26
                                    mem[_703 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _703 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _926 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_926] = 26
                                    mem[_926 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _714 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_714] = 26
                                    mem[_714 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _714 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _935 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_935] = 26
                                    mem[_935 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not block.timestamp - poolInfo[idx].field_512:
                                    _547 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_547] = 26
                                    mem[_547 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _547 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _691 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_691] = 26
                                        mem[_691 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _691 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _905 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_905] = 26
                                        mem[_905 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _702 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_702] = 26
                                        mem[_702 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _702 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _925 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_925] = 26
                                        mem[_925 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) / block.timestamp - poolInfo[idx].field_512 != sub_6a425bf3:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3):
                                        _551 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_551] = 26
                                        mem[_551 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _551 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            _701 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_701] = 26
                                            mem[_701 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _701 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _924 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_924] = 26
                                            mem[_924 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _710 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_710] = 26
                                            mem[_710 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _710 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _934 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_934] = 26
                                            mem[_934 + 32] = 'SafeMath: division by zero'
                                        if 0 / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (poolInfo[idx].field_512 * sub_6a425bf3) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _559 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_559] = 26
                                        mem[_559 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _559 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _709 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_709] = 26
                                            mem[_709 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _709 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _933 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_933] = 26
                                            mem[_933 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _721 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_721] = 26
                                            mem[_721 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _721 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _939 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_939] = 26
                                            mem[_939 + 32] = 'SafeMath: division by zero'
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if block.timestamp < startTime:
                                _554 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_554] = 26
                                mem[_554 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _554 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if not 0 / totalAllocPoint:
                                    _708 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_708] = 26
                                    mem[_708 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _708 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _932 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_932] = 26
                                    mem[_932 + 32] = 'SafeMath: division by zero'
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _720 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_720] = 26
                                    mem[_720 + 32] = 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1536:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _720 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_512 = block.timestamp
                                    _938 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_938] = 26
                                    mem[_938 + 32] = 'SafeMath: division by zero'
                                if 0 / totalAllocPoint / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not block.timestamp - startTime:
                                    _550 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_550] = 26
                                    mem[_550 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _550 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        _696 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_696] = 26
                                        mem[_696 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _696 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _917 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_917] = 26
                                        mem[_917 + 32] = 'SafeMath: division by zero'
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _707 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_707] = 26
                                        mem[_707 + 32] = 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1536:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _707 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_512 = block.timestamp
                                        _931 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_931] = 26
                                        mem[_931 + 32] = 'SafeMath: division by zero'
                                    if 0 / totalAllocPoint / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) / block.timestamp - startTime != sub_6a425bf3:
                                        revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3):
                                        _553 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_553] = 26
                                        mem[_553 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _553 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            _706 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_706] = 26
                                            mem[_706 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _706 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _930 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_930] = 26
                                            mem[_930 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _716 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_716] = 26
                                            mem[_716 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _716 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _937 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_937] = 26
                                            mem[_937 + 32] = 'SafeMath: division by zero'
                                        if 0 / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / (block.timestamp * sub_6a425bf3) - (startTime * sub_6a425bf3) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _563 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_563] = 26
                                        mem[_563 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _563 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint:
                                            _715 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_715] = 26
                                            mem[_715 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _715 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _936 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_936] = 26
                                            mem[_936 + 32] = 'SafeMath: division by zero'
                                        else:
                                            if 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x68536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _732 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_732] = 26
                                            mem[_732 + 32] = 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1536:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _732 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_512 = block.timestamp
                                            _940 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_940] = 26
                                            mem[_940 + 32] = 'SafeMath: division by zero'
                                        if (block.timestamp * sub_6a425bf3 * poolInfo[idx].field_256) - (startTime * sub_6a425bf3 * poolInfo[idx].field_256) / totalAllocPoint / 10 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        require ext_code.size(sub_365cbfbfAddress)
        staticcall sub_365cbfbfAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > sub_867f8ea1:
            require ext_code.size(sub_365cbfbfAddress)
            staticcall sub_365cbfbfAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_867f8ea1 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0] - sub_867f8ea1:
                require ext_code.size(sub_365cbfbfAddress)
                call sub_365cbfbfAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args devAddress, ext_call.return_data[0] - sub_867f8ea1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storA66C[stor7.length] = arg1
    if block.timestamp > startTime:
        storA66C[stor7.length] = block.timestamp
    else:
        storA66C[stor7.length] = startTime
    storA66C[stor7.length] = 0
    storA66C[stor7.length] = arg3
    storA66C[stor7.length] = arg4
    storA66C[stor7.length] = 0
}



}
