contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
address stor1;
uint256 geUnlockTime;
uint256 stor3;
address seedAddress;
address devAddress;
address feeAddress;
uint256 seedPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
uint16 referralCommissionRate; offset 160
address sub_8e6141d4Address;
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

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function seed() payable {
    return seedAddress
}

function owner() payable {
    return owner
}

function sub_8e6141d4(?) payable {
    return sub_8e6141d4Address
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function geUnlockTime() payable {
    return geUnlockTime
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function seedPerBlock() payable {
    return seedPerBlock
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
    emit 0x728be007: owner, 0
    owner = 0
}

function sub_f8b8db69(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_8e6141d4Address = arg1
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

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor1 = owner
    owner = 0
    geUnlockTime = arg1 + block.timestamp
    emit 0x728be007 
    emit 0x0 
    emit 0x0 
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xe0596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x728be007: owner, stor1
    owner = stor1
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
    emit 0x728be007: owner, arg1
    owner = arg1
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
    stor3++
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    userInfo[arg1][msg.sender].field_512 = 0
    userInfo[arg1][msg.sender].field_768 = 0
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][msg.sender].field_0
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
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
    require stor3 + 1 == stor3
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
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * seedPerBlock) - (poolInfo[arg1].field_512 * seedPerBlock) / block.number - poolInfo[arg1].field_512 != seedPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * seedPerBlock) - (poolInfo[arg1].field_512 * seedPerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / (block.number * seedPerBlock) - (poolInfo[arg1].field_512 * seedPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingSeed(uint256 arg1, address arg2) payable {
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * seedPerBlock) - (poolInfo[arg1].field_512 * seedPerBlock) / block.number - poolInfo[arg1].field_512 != seedPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * seedPerBlock) - (poolInfo[arg1].field_512 * seedPerBlock):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / (block.number * seedPerBlock) - (poolInfo[arg1].field_512 * seedPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 + ((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1][address(arg2)].field_512 - userInfo[arg1][address(arg2)].field_256)
    if (10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg1][address(arg2)].field_512 + ((10^12 * (block.number * seedPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * seedPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _213 = mem[64]
        mem[64] = mem[64] + 64
        mem[_213] = 30
        mem[_213 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _214 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _214 + 68] = mem[idx + _213 + 32]
                idx = idx + 32
                continue 
            mem[_214 + 68] = mem[_214 + 70 len 30]
            revert with memory
              from mem[64]
               len _214 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _225 = mem[64]
            mem[64] = mem[64] + 64
            mem[_225] = 26
            mem[_225 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            else:
                _257 = mem[64]
                mem[64] = mem[64] + 64
                mem[_257] = 26
                mem[_257 + 32] = 'SafeMath: division by zero'
                require ext_code.size(seedAddress)
                call seedAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(seedAddress)
                call seedAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_299] = 26
                    mem[_299 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _299 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_303] = 26
                    mem[_303 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _303 + 32]
                        idx = idx + 32
                        continue 
        else:
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 26
                mem[_228 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _228 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_264] = 26
                    mem[_264 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _302 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_302] = 26
                        mem[_302 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _302 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _307 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_307] = 26
                        mem[_307 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _307 + 32]
                            idx = idx + 32
                            continue 
            else:
                if (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock) / block.number - poolInfo[idx].field_512 != seedPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock):
                    _229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_229] = 26
                    mem[_229 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _229 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_270] = 26
                        mem[_270 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _306 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_306] = 26
                            mem[_306 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _306 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _312 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_312] = 26
                            mem[_312 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _312 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _233 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_233] = 26
                    mem[_233 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _233 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_274] = 26
                        mem[_274 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddress, (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _311 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_311] = 26
                            mem[_311 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _311 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _320 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_320] = 26
                            mem[_320 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _320 + 32]
                                idx = idx + 32
                                continue 
        revert with 0, 'SafeMath: division by zero'
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _221 = mem[64]
        mem[64] = mem[64] + 64
        mem[_221] = 30
        mem[_221 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _222 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _222 + 68] = mem[idx + _221 + 32]
                idx = idx + 32
                continue 
            mem[_222 + 68] = mem[_222 + 70 len 30]
            revert with memory
              from mem[64]
               len _222 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _233 = mem[64]
            mem[64] = mem[64] + 64
            mem[_233] = 26
            mem[_233 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _233 + 32]
                    idx = idx + 32
                    continue 
            else:
                _265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_265] = 26
                mem[_265 + 32] = 'SafeMath: division by zero'
                require ext_code.size(seedAddress)
                call seedAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(seedAddress)
                call seedAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _307 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_307] = 26
                    mem[_307 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _307 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _311 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_311] = 26
                    mem[_311 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _311 + 32]
                        idx = idx + 32
                        continue 
        else:
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _236 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_272] = 26
                    mem[_272 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_310] = 26
                        mem[_310 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _310 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_315] = 26
                        mem[_315 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _315 + 32]
                            idx = idx + 32
                            continue 
            else:
                if (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock) / block.number - poolInfo[idx].field_512 != seedPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock):
                    _237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_237] = 26
                    mem[_237 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _237 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_278] = 26
                        mem[_278 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _314 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_314] = 26
                            mem[_314 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _314 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _320 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_320] = 26
                            mem[_320 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _320 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _241 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_241] = 26
                    mem[_241 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _241 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _282 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_282] = 26
                        mem[_282 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddress, (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _319 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_319] = 26
                            mem[_319 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _319 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _328 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_328] = 26
                            mem[_328 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _328 + 32]
                                idx = idx + 32
                                continue 
        revert with 0, 'SafeMath: division by zero'
    emit EmissionRateUpdated(seedPerBlock, arg1, msg.sender);
    seedPerBlock = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
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
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_265] = 30
            mem[_265 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _268 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _268 + 68] = mem[idx + _265 + 32]
                    idx = idx + 32
                    continue 
                mem[_268 + 68] = mem[_268 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _268 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _279 = mem[64]
                mem[64] = mem[64] + 64
                mem[_279] = 26
                mem[_279 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _279 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _311 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_311] = 26
                    mem[_311 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_353] = 26
                        mem[_353 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _353 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_357] = 26
                        mem[_357 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _357 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_282] = 26
                    mem[_282 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _282 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_318] = 26
                        mem[_318 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _356 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_356] = 26
                            mem[_356 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _356 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _361 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_361] = 26
                            mem[_361 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _361 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock) / block.number - poolInfo[idx].field_512 != seedPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock):
                        _283 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_283] = 26
                        mem[_283 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _283 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _324 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_324] = 26
                            mem[_324 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _360 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_360] = 26
                                mem[_360 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _360 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _366 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_366] = 26
                                mem[_366 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _366 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _287 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_287] = 26
                        mem[_287 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _287 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _328 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_328] = 26
                            mem[_328 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                _365 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_365] = 26
                                mem[_365 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _365 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _374 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_374] = 26
                                mem[_374 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _374 + 32]
                                    idx = idx + 32
                                    continue 
            revert with 0, 'SafeMath: division by zero'
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
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = 30
            mem[_275 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _276 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _276 + 68] = mem[idx + _275 + 32]
                    idx = idx + 32
                    continue 
                mem[_276 + 68] = mem[_276 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _276 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _287 = mem[64]
                mem[64] = mem[64] + 64
                mem[_287] = 26
                mem[_287 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _287 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _319 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_319] = 26
                    mem[_319 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(seedAddress)
                    call seedAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _361 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_361] = 26
                        mem[_361 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _361 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_365] = 26
                        mem[_365 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _365 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not block.number - poolInfo[idx].field_512:
                    _290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_290] = 26
                    mem[_290 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _290 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = 26
                        mem[_326 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(seedAddress)
                        call seedAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _364 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_364] = 26
                            mem[_364 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _364 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _369 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_369] = 26
                            mem[_369 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _369 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock) / block.number - poolInfo[idx].field_512 != seedPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock):
                        _291 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_291] = 26
                        mem[_291 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _291 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _332 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_332] = 26
                            mem[_332 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _368 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_368] = 26
                                mem[_368 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _368 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _374 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_374] = 26
                                mem[_374 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _374 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / (block.number * seedPerBlock) - (poolInfo[idx].field_512 * seedPerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _295 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_295] = 26
                        mem[_295 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _295 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _336 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_336] = 26
                            mem[_336 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(seedAddress)
                            call seedAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                _373 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_373] = 26
                                mem[_373 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _373 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _382 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_382] = 26
                                mem[_382 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * seedPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * seedPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _382 + 32]
                                    idx = idx + 32
                                    continue 
            revert with 0, 'SafeMath: division by zero'
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



}
