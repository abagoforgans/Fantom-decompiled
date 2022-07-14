contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2, bool arg3)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - massUpdatePools()
#
const sub_97ff8345(?) = (168 * 24 * 3600)

const maxSupply = 10000 * 10^18

const MINIMUM_EMISSION_RATE = 10^12

const BONUS_MULTIPLIER = 1

const INITIAL_EMISSION_RATE = 10^15

const MAXIMUM_DEPOSIT_FEE_BP = 400

const EMISSION_REDUCTION_RATE_PER_PERIOD = 500

const EMISSION_REDUCTION_PERIOD_BLOCKS = (24 * 3600)


address owner;
uint256 stor1;
address sub_7d41d92dAddress;
address devAddress;
address feeAddress;
uint256 sub_5e155a37;
uint256 lockedTime;
uint256 startBlockHarvest;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 lastReductionPeriodIndex;
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

function devAddress() payable {
    return devAddress
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function startBlockHarvest() payable {
    return startBlockHarvest
}

function sub_5e155a37(?) payable {
    return sub_5e155a37
}

function lastReductionPeriodIndex() payable {
    return lastReductionPeriodIndex
}

function sub_7d41d92d(?) payable {
    return sub_7d41d92dAddress
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

function lockedTime() payable {
    return lockedTime
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if poolInfo.length:
        revert with 0, 'setStartBlock: FORBIDDEN'
    startBlock = arg1
    if arg1 + (168 * 24 * 3600) < arg1:
        revert with 0, 'SafeMath: addition overflow'
    startBlockHarvest = arg1 + (168 * 24 * 3600)
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

function updateLockedTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1 > 240 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    68,
                    0x727570646174654c6f636b656454696d653a20464f5242494444454e2c20456e737572652074686174206c6f636b74696d652069732062656c6f77207e20313020646179,
                    mem[232 len 28]
    lockedTime = arg1
    emit UpdateLockedTime(arg1, arg1, msg.sender);
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_7d41d92dAddress)
    staticcall sub_7d41d92dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 10000 * 10^18:
        return 0
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
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
    if poolInfo[arg1].field_1280 < userInfo[arg1][msg.sender].field_0:
        poolInfo[arg1].field_1280 = 0
    else:
        if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_0
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function sub_a42f93d7(?) payable {
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
    require ext_code.size(sub_7d41d92dAddress)
    staticcall sub_7d41d92dAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 10000 * 10^18:
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
    if (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37) / block.number - poolInfo[arg1].field_512 != sub_5e155a37:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37):
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
    if (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint:
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
    if 10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
    if (10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if sub_7d41d92dAddress != poolInfo[arg1].field_0:
            if ext_call.return_data[0]:
                if poolInfo[arg1].field_256:
                    require ext_code.size(sub_7d41d92dAddress)
                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 10000 * 10^18:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_7d41d92dAddress)
                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_7d41d92dAddress)
                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                            call sub_7d41d92dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_7d41d92dAddress)
                            call sub_7d41d92dAddress.0x40c10f19 with:
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
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 10000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_7d41d92dAddress)
                            call sub_7d41d92dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_7d41d92dAddress)
                            call sub_7d41d92dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_7d41d92dAddress)
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_7d41d92dAddress)
                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
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
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 10000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
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
                                require ext_code.size(sub_7d41d92dAddress)
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
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
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 10000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                            else:
                                if (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37) / block.number - poolInfo[arg1].field_512 != sub_5e155a37:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
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
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37) != poolInfo[arg1].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if ((block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
        else:
            if poolInfo[arg1].field_1280:
                if poolInfo[arg1].field_256:
                    require ext_code.size(sub_7d41d92dAddress)
                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 10000 * 10^18:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_7d41d92dAddress)
                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_7d41d92dAddress)
                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                            call sub_7d41d92dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_7d41d92dAddress)
                            call sub_7d41d92dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 10000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(sub_7d41d92dAddress)
                            call sub_7d41d92dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_7d41d92dAddress)
                            call sub_7d41d92dAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280
                    else:
                        if poolInfo[arg1].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_7d41d92dAddress)
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_7d41d92dAddress)
                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 10000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280
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
                                require ext_code.size(sub_7d41d92dAddress)
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 10000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280
                            else:
                                if (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37) / block.number - poolInfo[arg1].field_512 != sub_5e155a37:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280
                                else:
                                    if (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / (block.number * sub_5e155a37) - (poolInfo[arg1].field_512 * sub_5e155a37) != poolInfo[arg1].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if ((block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if (10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5e155a37 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.number
}

function updateBaseEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_7d41d92dAddress != poolInfo[idx].field_0:
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        require ext_code.size(sub_7d41d92dAddress)
                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 10000 * 10^18:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_7d41d92dAddress)
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_7d41d92dAddress)
                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
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
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 10000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                        else:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_7d41d92dAddress)
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
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
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 10000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                            else:
                                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
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
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
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
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                    else:
                                        if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
            else:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        require ext_code.size(sub_7d41d92dAddress)
                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 10000 * 10^18:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_7d41d92dAddress)
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_7d41d92dAddress)
                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 10000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                require ext_code.size(sub_7d41d92dAddress)
                                call sub_7d41d92dAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                        else:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_7d41d92dAddress)
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 10000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                            else:
                                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                else:
                                    if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        else:
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            else:
                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                    else:
                                        if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            else:
                                                if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        else:
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            else:
                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    emit EmissionRateUpdated(sub_5e155a37, arg1, msg.sender);
    sub_5e155a37 = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_7d41d92dAddress != poolInfo[idx].field_0:
                    if ext_call.return_data[0]:
                        if poolInfo[idx].field_256:
                            require ext_code.size(sub_7d41d92dAddress)
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 10000 * 10^18:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_7d41d92dAddress)
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
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
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 10000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
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
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                else:
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
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
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                    else:
                                        if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, 0 / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                        else:
                                            if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                else:
                    if poolInfo[idx].field_1280:
                        if poolInfo[idx].field_256:
                            require ext_code.size(sub_7d41d92dAddress)
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 10000 * 10^18:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_7d41d92dAddress)
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 10000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                            else:
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                else:
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        else:
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            else:
                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                    else:
                                        if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, 0 / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            else:
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                else:
                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                        else:
                                            if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                else:
                                                    if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            else:
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                else:
                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
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
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_7d41d92dAddress != poolInfo[idx].field_0:
                    if ext_call.return_data[0]:
                        if poolInfo[idx].field_256:
                            require ext_code.size(sub_7d41d92dAddress)
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 10000 * 10^18:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_7d41d92dAddress)
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
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
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 10000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
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
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                else:
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
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
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                    else:
                                        if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, 0 / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                        else:
                                            if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                else:
                    if poolInfo[idx].field_1280:
                        if poolInfo[idx].field_256:
                            require ext_code.size(sub_7d41d92dAddress)
                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 10000 * 10^18:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_7d41d92dAddress)
                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_7d41d92dAddress)
                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 10000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                    require ext_code.size(sub_7d41d92dAddress)
                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                            else:
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_7d41d92dAddress)
                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require ext_code.size(sub_7d41d92dAddress)
                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 10000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                        require ext_code.size(sub_7d41d92dAddress)
                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                else:
                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(sub_7d41d92dAddress)
                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require ext_code.size(sub_7d41d92dAddress)
                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        else:
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = this.address
                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                            require ext_code.size(sub_7d41d92dAddress)
                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            else:
                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if poolInfo[idx].field_1280 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require poolInfo[idx].field_1280
                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                    else:
                                        if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, 0 / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            else:
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                else:
                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                        else:
                                            if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require ext_code.size(sub_7d41d92dAddress)
                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                else:
                                                    if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            else:
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                require ext_code.size(sub_7d41d92dAddress)
                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                else:
                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if poolInfo[idx].field_1280 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require poolInfo[idx].field_1280
                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
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
    storF3F7[stor8.length] = 0
}

function updateEmissionRate() payable {
    if block.number > startBlock:
        if sub_5e155a37 > 10^12:
            if startBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.number - startBlock / 24 * 3600 > lastReductionPeriodIndex:
                idx = lastReductionPeriodIndex
                s = sub_5e155a37
                while idx < block.number - startBlock / 24 * 3600:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    if 9500 * s / s != 9500:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    idx = idx + 1
                    s = 9500 * s / 10000
                    continue 
                if s < 10^12:
                    if 10^12 < sub_5e155a37:
                        idx = 0
                        while idx < poolInfo.length:
                            mem[0] = 8
                            if block.number > poolInfo[idx].field_512:
                                mem[100] = this.address
                                require ext_code.size(poolInfo[idx].field_0)
                                staticcall poolInfo[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_7d41d92dAddress != poolInfo[idx].field_0:
                                    if ext_call.return_data[0]:
                                        if poolInfo[idx].field_256:
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 10000 * 10^18:
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, 0 / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 10000 * 10^18:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                            else:
                                                if poolInfo[idx].field_512 > block.number:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not block.number - poolInfo[idx].field_512:
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args devAddress, 0 / totalAllocPoint / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 0 / totalAllocPoint
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 10000 * 10^18:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                                else:
                                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not block.number - poolInfo[idx].field_512:
                                                        if totalAllocPoint <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require totalAllocPoint
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args devAddress, 0 / totalAllocPoint / 10
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                            mem[100] = this.address
                                                            mem[132] = 0 / totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                            mem[100] = this.address
                                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                            else:
                                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                                    else:
                                                        if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                                            if totalAllocPoint <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, 0 / totalAllocPoint / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = 0 / totalAllocPoint
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                                else:
                                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                                        else:
                                                            if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if totalAllocPoint <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                                else:
                                                                    if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                            else:
                                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                                else:
                                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                else:
                                    if poolInfo[idx].field_1280:
                                        if poolInfo[idx].field_256:
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 10000 * 10^18:
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, 0 / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not 0 / totalAllocPoint:
                                                        if poolInfo[idx].field_1280 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require poolInfo[idx].field_1280
                                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                    else:
                                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if poolInfo[idx].field_1280 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require poolInfo[idx].field_1280
                                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                                else:
                                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 10000 * 10^18:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                                        if poolInfo[idx].field_1280 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require poolInfo[idx].field_1280
                                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                    else:
                                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if poolInfo[idx].field_1280 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require poolInfo[idx].field_1280
                                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                            else:
                                                if poolInfo[idx].field_512 > block.number:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not block.number - poolInfo[idx].field_512:
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args devAddress, 0 / totalAllocPoint / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 0 / totalAllocPoint
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, 0 / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not 0 / totalAllocPoint:
                                                            if poolInfo[idx].field_1280 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require poolInfo[idx].field_1280
                                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                        else:
                                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if poolInfo[idx].field_1280 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require poolInfo[idx].field_1280
                                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                                    else:
                                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 10000 * 10^18:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                                            if poolInfo[idx].field_1280 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require poolInfo[idx].field_1280
                                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                        else:
                                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if poolInfo[idx].field_1280 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require poolInfo[idx].field_1280
                                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                                else:
                                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not block.number - poolInfo[idx].field_512:
                                                        if totalAllocPoint <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require totalAllocPoint
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args devAddress, 0 / totalAllocPoint / 10
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                            mem[100] = this.address
                                                            mem[132] = 0 / totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args this.address, 0 / totalAllocPoint
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if not 0 / totalAllocPoint:
                                                                if poolInfo[idx].field_1280 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require poolInfo[idx].field_1280
                                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                            else:
                                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if poolInfo[idx].field_1280 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require poolInfo[idx].field_1280
                                                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                                        else:
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                            mem[100] = this.address
                                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                if poolInfo[idx].field_1280 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require poolInfo[idx].field_1280
                                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                            else:
                                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if poolInfo[idx].field_1280 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require poolInfo[idx].field_1280
                                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                                    else:
                                                        if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                                            if totalAllocPoint <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, 0 / totalAllocPoint / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = 0 / totalAllocPoint
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, 0 / totalAllocPoint
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not 0 / totalAllocPoint:
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                                else:
                                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                                            else:
                                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                                else:
                                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                                        else:
                                                            if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if totalAllocPoint <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                                else:
                                                                    if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                                            else:
                                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                                else:
                                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        lastReductionPeriodIndex = block.number - startBlock / 24 * 3600
                        sub_5e155a37 = 10^12
                        emit EmissionRateUpdated(sub_5e155a37, 10^12, msg.sender);
                else:
                    if s < sub_5e155a37:
                        idx = 0
                        while idx < poolInfo.length:
                            mem[0] = 8
                            if block.number > poolInfo[idx].field_512:
                                mem[100] = this.address
                                require ext_code.size(poolInfo[idx].field_0)
                                staticcall poolInfo[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_7d41d92dAddress != poolInfo[idx].field_0:
                                    if ext_call.return_data[0]:
                                        if poolInfo[idx].field_256:
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 10000 * 10^18:
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, 0 / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 10000 * 10^18:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                            else:
                                                if poolInfo[idx].field_512 > block.number:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not block.number - poolInfo[idx].field_512:
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args devAddress, 0 / totalAllocPoint / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 0 / totalAllocPoint
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 10000 * 10^18:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                                else:
                                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not block.number - poolInfo[idx].field_512:
                                                        if totalAllocPoint <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require totalAllocPoint
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args devAddress, 0 / totalAllocPoint / 10
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                            mem[100] = this.address
                                                            mem[132] = 0 / totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                            mem[100] = this.address
                                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                            else:
                                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                                    else:
                                                        if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                                            if totalAllocPoint <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, 0 / totalAllocPoint / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = 0 / totalAllocPoint
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
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
                                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                                else:
                                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                                        else:
                                                            if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if totalAllocPoint <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                                else:
                                                                    if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                            else:
                                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                                else:
                                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require ext_call.return_data[0]
                                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / ext_call.return_data[0]
                                else:
                                    if poolInfo[idx].field_1280:
                                        if poolInfo[idx].field_256:
                                            require ext_code.size(sub_7d41d92dAddress)
                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 10000 * 10^18:
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(sub_7d41d92dAddress)
                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require ext_code.size(sub_7d41d92dAddress)
                                                if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, 0 / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not 0 / totalAllocPoint:
                                                        if poolInfo[idx].field_1280 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require poolInfo[idx].field_1280
                                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                    else:
                                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if poolInfo[idx].field_1280 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require poolInfo[idx].field_1280
                                                        if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                                else:
                                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 10000 * 10^18:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    call sub_7d41d92dAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not -ext_call.return_data[0] + 10000 * 10^18:
                                                        if poolInfo[idx].field_1280 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require poolInfo[idx].field_1280
                                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                    else:
                                                        if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if poolInfo[idx].field_1280 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require poolInfo[idx].field_1280
                                                        if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                            else:
                                                if poolInfo[idx].field_512 > block.number:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not block.number - poolInfo[idx].field_512:
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require ext_code.size(sub_7d41d92dAddress)
                                                    if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args devAddress, 0 / totalAllocPoint / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 0 / totalAllocPoint
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, 0 / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not 0 / totalAllocPoint:
                                                            if poolInfo[idx].field_1280 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require poolInfo[idx].field_1280
                                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                        else:
                                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if poolInfo[idx].field_1280 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require poolInfo[idx].field_1280
                                                            if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                                    else:
                                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 10000 * 10^18:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        call sub_7d41d92dAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not -ext_call.return_data[0] + 10000 * 10^18:
                                                            if poolInfo[idx].field_1280 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require poolInfo[idx].field_1280
                                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                        else:
                                                            if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if poolInfo[idx].field_1280 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require poolInfo[idx].field_1280
                                                            if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                                else:
                                                    if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not block.number - poolInfo[idx].field_512:
                                                        if totalAllocPoint <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require totalAllocPoint
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        require ext_code.size(sub_7d41d92dAddress)
                                                        if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args devAddress, 0 / totalAllocPoint / 10
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                            mem[100] = this.address
                                                            mem[132] = 0 / totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args this.address, 0 / totalAllocPoint
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if not 0 / totalAllocPoint:
                                                                if poolInfo[idx].field_1280 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require poolInfo[idx].field_1280
                                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                            else:
                                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if poolInfo[idx].field_1280 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require poolInfo[idx].field_1280
                                                                if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                                        else:
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] > 10000 * 10^18:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                            mem[100] = this.address
                                                            mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            call sub_7d41d92dAddress.0x40c10f19 with:
                                                                 gas gas_remaining wei
                                                                args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                if poolInfo[idx].field_1280 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require poolInfo[idx].field_1280
                                                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                            else:
                                                                if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if poolInfo[idx].field_1280 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require poolInfo[idx].field_1280
                                                                if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                                    else:
                                                        if (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) / block.number - poolInfo[idx].field_512 != sub_5e155a37:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37):
                                                            if totalAllocPoint <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if (0 / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            if (0 / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, 0 / totalAllocPoint / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = 0 / totalAllocPoint
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, 0 / totalAllocPoint
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not 0 / totalAllocPoint:
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                                else:
                                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                                            else:
                                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                                else:
                                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                                        else:
                                                            if (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / (block.number * sub_5e155a37) - (poolInfo[idx].field_512 * sub_5e155a37) != poolInfo[idx].field_256:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if totalAllocPoint <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require totalAllocPoint
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require ext_code.size(sub_7d41d92dAddress)
                                                            if ((block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint) + ext_call.return_data[0] <= 10000 * 10^18:
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint:
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                                else:
                                                                    if 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5e155a37 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5e155a37 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                                            else:
                                                                staticcall sub_7d41d92dAddress.0x18160ddd with:
                                                                        gas gas_remaining wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] > 10000 * 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args devAddress, -ext_call.return_data[0] + 10000 * 10^18 / 10
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                                mem[100] = this.address
                                                                mem[132] = -ext_call.return_data[0] + 10000 * 10^18
                                                                require ext_code.size(sub_7d41d92dAddress)
                                                                call sub_7d41d92dAddress.0x40c10f19 with:
                                                                     gas gas_remaining wei
                                                                    args this.address, -ext_call.return_data[0] + 10000 * 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if not -ext_call.return_data[0] + 10000 * 10^18:
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                                                else:
                                                                    if (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / -ext_call.return_data[0] + 10000 * 10^18 != 10^12:
                                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                    if poolInfo[idx].field_1280 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    require poolInfo[idx].field_1280
                                                                    if ((-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    poolInfo[idx].field_768 += (-1 * 10^12 * ext_call.return_data[0]) + 10000000000000000 * 10^18 / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        lastReductionPeriodIndex = block.number - startBlock / 24 * 3600
                        sub_5e155a37 = s
                        emit EmissionRateUpdated(sub_5e155a37, s, msg.sender);
}



}
