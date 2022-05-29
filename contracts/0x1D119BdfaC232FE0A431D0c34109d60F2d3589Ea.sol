contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
const sub_03b19d6a(?) = 2000

const MAX_DEPOSIT_FEE = 2000


address owner;
uint256 stor1;
uint8 hasUserLimit; offset 160
uint8 isInitialized; offset 168
uint128 stor2; offset 160
address sub_74762e7dAddress;
uint256 accTokenPerShare;
uint256 endTime;
uint256 startTime;
uint256 lastRewardTime;
uint16 depositFee;
address feeAddress; offset 16
uint256 totalStakedSupply;
uint8 sub_90f255d1;
uint16 tokenTaxRate; offset 8
uint256 poolLimitPerUser;
uint256 rewardPerSecond;
uint256 PRECISION_FACTOR;
address rewardTokenAddress;
address stakedTokenAddress;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function endTime() payable {
    return endTime
}

function isInitialized() payable {
    return bool(isInitialized)
}

function feeAddress() payable {
    return feeAddress
}

function poolLimitPerUser() payable {
    return poolLimitPerUser
}

function depositFee() payable {
    return depositFee
}

function sub_74762e7d(?) payable {
    return sub_74762e7dAddress
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function accTokenPerShare() payable {
    return accTokenPerShare
}

function sub_90f255d1(?) payable {
    return bool(sub_90f255d1)
}

function lastRewardTime() payable {
    return lastRewardTime
}

function hasUserLimit() payable {
    return bool(hasUserLimit)
}

function totalStakedSupply() payable {
    return totalStakedSupply
}

function stakedToken() payable {
    return stakedTokenAddress
}

function PRECISION_FACTOR() payable {
    return PRECISION_FACTOR
}

function tokenTaxRate() payable {
    return tokenTaxRate
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    endTime = block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateDepositFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if arg1 >= 2000:
        revert with 0, 'Invalid deposit fee'
    depositFee = arg1
    emit NewDepositFee(arg1);
}

function updateRewardPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if block.timestamp >= startTime:
        revert with 0, 'Pool has started'
    rewardPerSecond = arg1
    emit NewRewardPerSecond(arg1);
}

function updateTokenTaxRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if arg1 >= 2000:
        revert with 0, 'Invalid token tax rate'
    tokenTaxRate = arg1
    emit NewTokenTaxRate(uint16 arg1):
                         0,
                         arg1,
}

function updateFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if feeAddress == arg1:
        revert with 0, 'Same fee address already set'
    feeAddress = arg1
    emit NewFeeAddress(address arg1):
                       0,
                       arg1,
}

function updatePoolLimitPerUser(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if not hasUserLimit:
        revert with 0, 'Must be set'
    if not arg1:
        stor2 = Mask(96, 0, arg1)
        poolLimitPerUser = 0
    else:
        if arg2 <= poolLimitPerUser:
            revert with 0, 'New limit must be higher'
        poolLimitPerUser = arg2
    emit NewPoolLimit(poolLimitPerUser);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9f94e272(?) payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(sub_90f255d1) != 1:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < totalStakedSupply:
        return 0
    if totalStakedSupply > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - totalStakedSupply)
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if block.timestamp >= startTime:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x774e657720737461727454696d65206d757374206265206c6f776572207468616e206e657720656e64426c6f636b2074696d657374616d,
                    mem[219 len 9]
    if block.timestamp >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x724e657720737461727454696d65206d75737420626520686967686572207468616e2063757272656e7420626c6f636b2074696d657374616d,
                    mem[221 len 7]
    startTime = arg1
    endTime = arg2
    lastRewardTime = arg1
    emit NewStartAndEndBlocks(arg1, arg2);
}

function sub_94a7d60c(?) payable {
    require calldata.size - 4 >= 320
    if isInitialized:
        revert with 0, 'Already initialized'
    if sub_74762e7dAddress != msg.sender:
        revert with 0, 'Not factory'
    isInitialized = 1
    stakedTokenAddress = arg1
    rewardTokenAddress = arg2
    if arg2 == arg1:
        sub_90f255d1 = 1
    rewardPerSecond = arg3
    startTime = arg4
    endTime = arg5
    if arg7 >= 2000:
        revert with 0, 'Invalid token tax rate'
    tokenTaxRate = arg7
    if arg8 >= 2000:
        revert with 0, 'Invalid deposit fee'
    depositFee = arg8
    feeAddress = arg9
    if arg6:
        hasUserLimit = 1
        poolLimitPerUser = arg6
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] >= 30:
        revert with 0, 'Must be inferior to 30'
    if ext_call.return_data[31 len 1] > 30:
        revert with 0, 'SafeMath: subtraction overflow'
    PRECISION_FACTOR = 10^(-ext_call.return_data[31 len 1] + 30)
    lastRewardTime = startTime
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if not arg10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg10);
    owner = arg10
}

function recoverWrongTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    if stakedTokenAddress == arg1:
        revert with 0, 'Cannot be staked token'
    if rewardTokenAddress == arg1:
        revert with 0, 'Cannot be reward token'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
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
    emit AdminTokenRecovery(address(arg1), arg2);
}

function emergencyWithdraw() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    if userInfo[msg.sender].field_0:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(stakedTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_32
        call stakedTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_0
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
        if totalStakedSupply <= userInfo[msg.sender].field_0:
            totalStakedSupply = 0
        else:
            if userInfo[msg.sender].field_0 > totalStakedSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalStakedSupply -= userInfo[msg.sender].field_0
    emit EmergencyWithdraw(userInfo[msg.sender].field_0, msg.sender);
    stor1 = 1
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'pOwnable: caller is not the owne'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(sub_90f255d1) != 1:
        if ext_call.return_data[0] <= arg1:
            revert with 0, 'Insufficient reward tokens'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        mem[324 len 0] = 0
    else:
        if ext_call.return_data[0] >= totalStakedSupply:
            if totalStakedSupply > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - totalStakedSupply <= arg1:
                revert with 0, 'Insufficient reward tokens'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        else:
            if 0 <= arg1:
                revert with 0, 'Insufficient reward tokens'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
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
}

function pendingToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= lastRewardTime:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if accTokenPerShare * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not totalStakedSupply:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if accTokenPerShare * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if block.timestamp <= endTime:
        if lastRewardTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastRewardTime:
            if totalStakedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStakedSupply
            if (0 / totalStakedSupply) + accTokenPerShare < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStakedSupply) + accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond) / block.timestamp - lastRewardTime != rewardPerSecond:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond):
            if totalStakedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStakedSupply
            if (0 / totalStakedSupply) + accTokenPerShare < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStakedSupply) + accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.timestamp * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / (block.timestamp * rewardPerSecond) - (lastRewardTime * rewardPerSecond) != PRECISION_FACTOR:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStakedSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakedSupply
        if ((block.timestamp * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if ((block.timestamp * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((block.timestamp * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > ((block.timestamp * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((((block.timestamp * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardTime >= endTime:
        if totalStakedSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakedSupply
        if (0 / totalStakedSupply) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStakedSupply) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardTime > endTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTime - lastRewardTime:
        if totalStakedSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakedSupply
        if (0 / totalStakedSupply) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStakedSupply) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond) / endTime - lastRewardTime != rewardPerSecond:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond):
        if totalStakedSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakedSupply
        if (0 / totalStakedSupply) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStakedSupply) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (endTime * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / (endTime * rewardPerSecond) - (lastRewardTime * rewardPerSecond) != PRECISION_FACTOR:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalStakedSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStakedSupply
    if ((endTime * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply) + accTokenPerShare < accTokenPerShare:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if ((endTime * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((endTime * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply) + accTokenPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if PRECISION_FACTOR <= 0:
        revert with 0, 'SafeMath: division by zero'
    require PRECISION_FACTOR
    if userInfo[address(arg1)].field_256 > ((endTime * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((endTime * rewardPerSecond * PRECISION_FACTOR) - (lastRewardTime * rewardPerSecond * PRECISION_FACTOR) / totalStakedSupply * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
}



}
