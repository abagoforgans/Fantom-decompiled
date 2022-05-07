contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
uint256 stor1;
address sub_eb1b1a7eAddress;
address dev1Address;
address dev2Address;
address feeAddress;
address treasuryAddress;
uint256 sub_9e96ce38;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
uint16 referralCommissionRate; offset 160
address sub_721215b6Address;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of uint16 stor110349606679412691172957834289542550319383271247755660854362242977991410020071;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020072;

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
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function dev2Address() payable {
    return dev2Address
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

function sub_721215b6(?) payable {
    return sub_721215b6Address
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

function sub_9e96ce38(?) payable {
    return sub_9e96ce38
}

function treasuryAddress() payable {
    return treasuryAddress
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function sub_eb1b1a7e(?) payable {
    return sub_eb1b1a7eAddress
}

function dev1Address() payable {
    return dev1Address
}

function _fallback() payable {
    revert
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_57169e1f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_721215b6Address = arg1
}

function sub_ded70f51(?) payable {
    require calldata.size - 4 >= 32
    if dev1Address != msg.sender:
        revert with 0, 'setDev1Address: FORBIDDEN'
    if not arg1:
        revert with 0, 'setDev1Address: ZERO'
    dev1Address = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: ZERO'
    feeAddress = arg1
}

function setDev2Address(address arg1) payable {
    require calldata.size - 4 >= 32
    if dev2Address != msg.sender:
        revert with 0, 'setDev2Address: FORBIDDEN'
    if not arg1:
        revert with 0, 'setDev2Address: ZERO'
    dev2Address = arg1
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if treasuryAddress != msg.sender:
        if feeAddress != msg.sender:
            revert with 0, 'setTreasuryAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setTreasuryAddress: ZERO'
    treasuryAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
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
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg2 - arg1)
}

function setReferralCommissionRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x73736574526566657272616c436f6d6d697373696f6e526174653a20696e76616c696420726566657272616c20636f6d6d697373696f6e207261746520626173697320706f696e74,
                    mem[236 len 24]
    referralCommissionRate = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    userInfo[arg1][msg.sender].field_512 = 0
    userInfo[arg1][msg.sender].field_768 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][msg.sender].field_0
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function sub_f0f813aa(?) payable {
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
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
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
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_9e96ce38) - (poolInfo[arg1].field_512 * sub_9e96ce38) / block.number - poolInfo[arg1].field_512 != sub_9e96ce38:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_9e96ce38) - (poolInfo[arg1].field_512 * sub_9e96ce38):
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
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / (block.number * sub_9e96ce38) - (poolInfo[arg1].field_512 * sub_9e96ce38) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
    if (10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint / 10:
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 0
                        else:
                            if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint / 10:
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev1Address, 0
                        else:
                            if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint / 10:
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev2Address, 0
                        else:
                            if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint / 10:
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0
                        else:
                            if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 0
                            else:
                                if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 0
                            else:
                                if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0
                            else:
                                if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38) / block.number - poolInfo[idx].field_512 != sub_9e96ce38:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev1Address, 0
                                else:
                                    if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev2Address, 0
                                else:
                                    if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args treasuryAddress, 0
                                else:
                                    if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if 45 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 45:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 45 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev1Address, 0
                                else:
                                    if 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 25:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev1Address, 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev2Address, 0
                                else:
                                    if 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 25:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev2Address, 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args treasuryAddress, 0
                                else:
                                    if 5 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args treasuryAddress, 5 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    emit EmissionRateUpdated(sub_9e96ce38, arg1, msg.sender);
    sub_9e96ce38 = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 0
                            else:
                                if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 0
                            else:
                                if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0
                            else:
                                if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev1Address, 0
                                else:
                                    if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev2Address, 0
                                else:
                                    if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args treasuryAddress, 0
                                else:
                                    if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38) / block.number - poolInfo[idx].field_512 != sub_9e96ce38:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 0
                                    else:
                                        if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev1Address, 0
                                    else:
                                        if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev2Address, 0
                                    else:
                                        if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args treasuryAddress, 0
                                    else:
                                        if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 0
                                    else:
                                        if 45 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 45:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 45 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev1Address, 0
                                    else:
                                        if 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 25:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev1Address, 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev2Address, 0
                                    else:
                                        if 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 25:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev2Address, 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args treasuryAddress, 0
                                    else:
                                        if 5 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args treasuryAddress, 5 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
    poolInfo[arg1].field_1024 = arg3
    poolInfo[arg1].field_1280 = arg4
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 0
                            else:
                                if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 0
                            else:
                                if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0
                            else:
                                if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 0
                                else:
                                    if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev1Address, 0
                                else:
                                    if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev2Address, 0
                                else:
                                    if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint / 10:
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args treasuryAddress, 0
                                else:
                                    if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38) / block.number - poolInfo[idx].field_512 != sub_9e96ce38:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 0
                                    else:
                                        if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev1Address, 0
                                    else:
                                        if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev2Address, 0
                                    else:
                                        if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args treasuryAddress, 0
                                    else:
                                        if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / (block.number * sub_9e96ce38) - (poolInfo[idx].field_512 * sub_9e96ce38) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 0
                                    else:
                                        if 45 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 45:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args feeAddress, 45 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev1Address, 0
                                    else:
                                        if 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 25:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev1Address, 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev2Address, 0
                                    else:
                                        if 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 25:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args dev2Address, 25 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10:
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args treasuryAddress, 0
                                    else:
                                        if 5 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 != 5:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        require ext_code.size(sub_eb1b1a7eAddress)
                                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args treasuryAddress, 5 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / 10 / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_eb1b1a7eAddress)
                                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_9e96ce38 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9e96ce38 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
    storF3F7[stor8.length] = arg3
    storF3F7[stor8.length] = arg4
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
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint / 10:
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args feeAddress, 0
                    else:
                        if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint / 10:
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dev1Address, 0
                    else:
                        if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint / 10:
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dev2Address, 0
                    else:
                        if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint / 10:
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 0
                    else:
                        if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_eb1b1a7eAddress)
                    call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint / 10:
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 0
                        else:
                            if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint / 10:
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev1Address, 0
                        else:
                            if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint / 10:
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev2Address, 0
                        else:
                            if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint / 10:
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args treasuryAddress, 0
                        else:
                            if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_eb1b1a7eAddress)
                        call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * sub_9e96ce38) - (poolInfo[arg1].field_512 * sub_9e96ce38) / block.number - poolInfo[arg1].field_512 != sub_9e96ce38:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * sub_9e96ce38) - (poolInfo[arg1].field_512 * sub_9e96ce38):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 45 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 45:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 45 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 0
                            else:
                                if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 25 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 0
                            else:
                                if 25 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 25:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 25 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0
                            else:
                                if 5 * 0 / totalAllocPoint / 10 / 0 / totalAllocPoint / 10 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 5 * 0 / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / (block.number * sub_9e96ce38) - (poolInfo[arg1].field_512 * sub_9e96ce38) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 0
                            else:
                                if 45 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 != 45:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args feeAddress, 45 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 0
                            else:
                                if 25 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 != 25:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev1Address, 25 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 0
                            else:
                                if 25 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 != 25:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args dev2Address, 25 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10:
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 0
                            else:
                                if 5 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 / (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_eb1b1a7eAddress)
                                call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args treasuryAddress, 5 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / 10 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_eb1b1a7eAddress)
                            call sub_eb1b1a7eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_9e96ce38 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9e96ce38 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}



}
