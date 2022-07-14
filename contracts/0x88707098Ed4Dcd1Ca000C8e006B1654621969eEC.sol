contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3, bool arg4)
#  - updateBaseEmissionRate(uint256 arg1)
#
const sub_1c8499c9(?) = 10^18

const sub_b7dad0f6(?) = 1300

const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const MINIMUM_EMISSION_RATE = 5 * 10^16

const BONUS_MULTIPLIER = 1

const INITIAL_EMISSION_RATE = 5 * 10^17

const MAXIMUM_DEPOSIT_FEE_BP = 400

const EMISSION_REDUCTION_RATE_PER_PERIOD = 1500

const BURN_ADDRESS = 57005


address owner;
uint256 stor1;
address sub_fd6eda3fAddress;
address sub_948ea65cAddress;
address devAddress;
uint256 sub_fb9788cb;
uint256 lastReductionPeriodIndex;
address feeAddress;
uint256 sub_5f36302c;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint256 sub_68a15278;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
uint16 referralCommissionRate;
mapping of address referral;
mapping of uint256 referralsCount;
mapping of uint256 totalReferralCommissions;
mapping of uint8 stor19;
mapping of uint256 poolIdForLpToken;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of uint16 stor49791959467252497455735130940088646708311117250336157395101362029847983278003;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278005;

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

function getPoolIdForLpToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor19[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72676574506f6f6c4964466f724c70546f6b656e3a20646f206e6f742065786973,
                    mem[197 len 31]
    return poolIdForLpToken[address(arg1)]
}

function devAddress() payable {
    return devAddress
}

function getReferral(address arg1) payable {
    require calldata.size - 4 >= 32
    return referral[address(arg1)]
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

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    return referral[arg1]
}

function sub_5f36302c(?) payable {
    return sub_5f36302c
}

function sub_68a15278(?) payable {
    require calldata.size - 4 >= 64
    return sub_68a15278[arg1][arg2]
}

function lastReductionPeriodIndex() payable {
    return lastReductionPeriodIndex
}

function referralsCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referralsCount[arg1]
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

function sub_948ea65c(?) payable {
    return sub_948ea65cAddress
}

function poolIdForLpAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return poolIdForLpToken[arg1]
}

function totalReferralCommissions(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalReferralCommissions[arg1]
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function sub_fb9788cb(?) payable {
    return sub_fb9788cb
}

function sub_fd6eda3f(?) payable {
    return sub_fd6eda3fAddress
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

function setstartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    startBlock = arg1
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

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if poolInfo.length:
        revert with 0, 'setTokenAddress: FORBIDDEN'
    sub_fd6eda3fAddress = arg1
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
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
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
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_fd6eda3fAddress)
                    call sub_fd6eda3fAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_fd6eda3fAddress)
                        call sub_fd6eda3fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0
                    else:
                        if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_fd6eda3fAddress)
                        call sub_fd6eda3fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 3 * 0 / totalAllocPoint
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
                        require ext_code.size(sub_fd6eda3fAddress)
                        call sub_fd6eda3fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * 0 / totalAllocPoint
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
                        if (block.number * sub_5f36302c) - (poolInfo[arg1].field_512 * sub_5f36302c) / block.number - poolInfo[arg1].field_512 != sub_5f36302c:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * sub_5f36302c) - (poolInfo[arg1].field_512 * sub_5f36302c):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * 0 / totalAllocPoint
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
                            if (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / (block.number * sub_5f36302c) - (poolInfo[arg1].field_512 * sub_5f36302c) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if 3 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint != 3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
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
            if ext_call.return_data[0]:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_fd6eda3fAddress)
                        call sub_fd6eda3fAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                        else:
                            if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 3 * 0 / totalAllocPoint
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 3 * 0 / totalAllocPoint
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
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 3 * 0 / totalAllocPoint
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * 0 / totalAllocPoint
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
                            if (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) / block.number - poolInfo[idx].field_512 != sub_5f36302c:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 3 * 0 / totalAllocPoint
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 3 * 0 / totalAllocPoint
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
                                if (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 3:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg6:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
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
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 3 * 0 / totalAllocPoint
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * 0 / totalAllocPoint
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
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 3 * 0 / totalAllocPoint
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 3 * 0 / totalAllocPoint
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
                                if (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) / block.number - poolInfo[idx].field_512 != sub_5f36302c:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0
                                        require ext_code.size(sub_fd6eda3fAddress)
                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                    else:
                                        if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 3 * 0 / totalAllocPoint
                                        require ext_code.size(sub_fd6eda3fAddress)
                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 3 * 0 / totalAllocPoint
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
                                    if (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0
                                        require ext_code.size(sub_fd6eda3fAddress)
                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                    else:
                                        if 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 3:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_fd6eda3fAddress)
                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
    poolInfo[arg1].field_1536 = arg5
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg6:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
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
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_fd6eda3fAddress)
                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                            else:
                                if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 3 * 0 / totalAllocPoint
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 3 * 0 / totalAllocPoint
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
                                require ext_code.size(sub_fd6eda3fAddress)
                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                else:
                                    if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 3 * 0 / totalAllocPoint
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 3 * 0 / totalAllocPoint
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
                                if (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) / block.number - poolInfo[idx].field_512 != sub_5f36302c:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0
                                        require ext_code.size(sub_fd6eda3fAddress)
                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                    else:
                                        if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 3 * 0 / totalAllocPoint
                                        require ext_code.size(sub_fd6eda3fAddress)
                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 3 * 0 / totalAllocPoint
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
                                    if (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(sub_fd6eda3fAddress)
                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0
                                        require ext_code.size(sub_fd6eda3fAddress)
                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                    else:
                                        if 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 3:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(sub_fd6eda3fAddress)
                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor6E15[stor9.length] = arg1
    if block.number > startBlock:
        stor6E15[stor9.length] = block.number
    else:
        stor6E15[stor9.length] = startBlock
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = arg3
    stor6E15[stor9.length] = arg4
    stor6E15[stor9.length] = arg5
}

function sub_ec0907d3(?) payable {
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
    if (block.number * sub_5f36302c) - (poolInfo[arg1].field_512 * sub_5f36302c) / block.number - poolInfo[arg1].field_512 != sub_5f36302c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_5f36302c) - (poolInfo[arg1].field_512 * sub_5f36302c):
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
    if (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / (block.number * sub_5f36302c) - (poolInfo[arg1].field_512 * sub_5f36302c) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint:
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
    if 10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
    if (10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.number * sub_5f36302c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_5f36302c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updateEmissionRate() payable {
    if block.number > startBlock:
        if sub_5f36302c > 5 * 10^16:
            if startBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_fb9788cb <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_fb9788cb
            if block.number - startBlock / sub_fb9788cb > lastReductionPeriodIndex:
                idx = lastReductionPeriodIndex
                s = sub_5f36302c
                while idx < block.number - startBlock / sub_fb9788cb:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    if 8500 * s / s != 8500:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    idx = idx + 1
                    s = 8500 * s / 10000
                    continue 
                if s < 5 * 10^16:
                    if 5 * 10^16 < sub_5f36302c:
                        idx = 0
                        while idx < poolInfo.length:
                            mem[0] = 9
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
                                if ext_call.return_data[0]:
                                    if poolInfo[idx].field_256:
                                        if poolInfo[idx].field_512 > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.number - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_fd6eda3fAddress)
                                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = 0
                                                require ext_code.size(sub_fd6eda3fAddress)
                                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(this.address), 0
                                            else:
                                                if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = 3 * 0 / totalAllocPoint
                                                require ext_code.size(sub_fd6eda3fAddress)
                                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(this.address), 3 * 0 / totalAllocPoint
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
                                                require ext_code.size(sub_fd6eda3fAddress)
                                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, 0 / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = 0
                                                    require ext_code.size(sub_fd6eda3fAddress)
                                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(this.address), 0
                                                else:
                                                    if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = 3 * 0 / totalAllocPoint
                                                    require ext_code.size(sub_fd6eda3fAddress)
                                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(this.address), 3 * 0 / totalAllocPoint
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
                                                if (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) / block.number - poolInfo[idx].field_512 != sub_5f36302c:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_fd6eda3fAddress)
                                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, 0 / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not 0 / totalAllocPoint:
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 0
                                                        require ext_code.size(sub_fd6eda3fAddress)
                                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(this.address), 0
                                                    else:
                                                        if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 3 * 0 / totalAllocPoint
                                                        require ext_code.size(sub_fd6eda3fAddress)
                                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(this.address), 3 * 0 / totalAllocPoint
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
                                                    if (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_fd6eda3fAddress)
                                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 0
                                                        require ext_code.size(sub_fd6eda3fAddress)
                                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(this.address), 0
                                                    else:
                                                        if 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 3:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(sub_fd6eda3fAddress)
                                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(this.address), 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        lastReductionPeriodIndex = block.number - startBlock / sub_fb9788cb
                        sub_5f36302c = 5 * 10^16
                        if not sub_fb9788cb:
                            sub_fb9788cb = 0
                        else:
                            if 1300 * sub_fb9788cb / sub_fb9788cb != 1300:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            sub_fb9788cb = 1300 * sub_fb9788cb / 1000
                else:
                    if s < sub_5f36302c:
                        idx = 0
                        while idx < poolInfo.length:
                            mem[0] = 9
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
                                if ext_call.return_data[0]:
                                    if poolInfo[idx].field_256:
                                        if poolInfo[idx].field_512 > block.number:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.number - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(sub_fd6eda3fAddress)
                                            call sub_fd6eda3fAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devAddress, 0 / totalAllocPoint / 10
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = 0
                                                require ext_code.size(sub_fd6eda3fAddress)
                                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(this.address), 0
                                            else:
                                                if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                mem[100] = this.address
                                                mem[132] = 3 * 0 / totalAllocPoint
                                                require ext_code.size(sub_fd6eda3fAddress)
                                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args address(this.address), 3 * 0 / totalAllocPoint
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
                                                require ext_code.size(sub_fd6eda3fAddress)
                                                call sub_fd6eda3fAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devAddress, 0 / totalAllocPoint / 10
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = 0
                                                    require ext_code.size(sub_fd6eda3fAddress)
                                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(this.address), 0
                                                else:
                                                    if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                    mem[100] = this.address
                                                    mem[132] = 3 * 0 / totalAllocPoint
                                                    require ext_code.size(sub_fd6eda3fAddress)
                                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args address(this.address), 3 * 0 / totalAllocPoint
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
                                                if (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) / block.number - poolInfo[idx].field_512 != sub_5f36302c:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_fd6eda3fAddress)
                                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, 0 / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not 0 / totalAllocPoint:
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 0
                                                        require ext_code.size(sub_fd6eda3fAddress)
                                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(this.address), 0
                                                    else:
                                                        if 3 * 0 / totalAllocPoint / 0 / totalAllocPoint != 3:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 3 * 0 / totalAllocPoint
                                                        require ext_code.size(sub_fd6eda3fAddress)
                                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(this.address), 3 * 0 / totalAllocPoint
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
                                                    if (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / (block.number * sub_5f36302c) - (poolInfo[idx].field_512 * sub_5f36302c) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    require ext_code.size(sub_fd6eda3fAddress)
                                                    call sub_fd6eda3fAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args devAddress, (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / 10
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 0
                                                        require ext_code.size(sub_fd6eda3fAddress)
                                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(this.address), 0
                                                    else:
                                                        if 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 3:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                                        mem[100] = this.address
                                                        mem[132] = 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(sub_fd6eda3fAddress)
                                                        call sub_fd6eda3fAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args address(this.address), 3 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_5f36302c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_5f36302c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        lastReductionPeriodIndex = block.number - startBlock / sub_fb9788cb
                        sub_5f36302c = s
                        if not sub_fb9788cb:
                            sub_fb9788cb = 0
                        else:
                            if 1300 * sub_fb9788cb / sub_fb9788cb != 1300:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            sub_fb9788cb = 1300 * sub_fb9788cb / 1000
}



}
