contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - deposit(uint256 arg1, uint256 arg2)
#
const MAXIMUM_REFERRAL_BP = 1500

const INITIAL_EMISSION_RATE = 75 * 10^16

const MAXIMUM_DEPOSIT_FEE_BP = 1000

const INITIAL_HARVEST_TIME = (8 * 3600)


address owner;
uint256 stor1;
address sub_e5edd154Address;
address devAddr;
uint256 sub_56aaf8e0;
address feeAddress;
uint256 harvestTime;
uint256 startBlockHarvest;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
uint256 refBonusBP;
mapping of address referral;
mapping of uint256 referredCount;
mapping of uint8 stor16;
mapping of uint256 poolIdForLpToken;

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
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function getPoolIdForLpToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor16[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e676574506f6f6c4964466f724c70546f6b656e3a20646f206e6f742065786973,
                    mem[197 len 31]
    return poolIdForLpToken[address(arg1)]
}

function getReferral(address arg1) payable {
    require calldata.size - 4 >= 32
    return referral[address(arg1)]
}

function referredCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referredCount[arg1]
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

function sub_56aaf8e0(?) payable {
    return sub_56aaf8e0
}

function startBlockHarvest() payable {
    return startBlockHarvest
}

function refBonusBP() payable {
    return refBonusBP
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function poolIdForLpAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return poolIdForLpToken[arg1]
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function devAddr() payable {
    return devAddr
}

function sub_e5edd154(?) payable {
    return sub_e5edd154Address
}

function harvestTime() payable {
    return harvestTime
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function updateHarvestTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    harvestTime = arg1
    emit UpdateHarvestTime(harvestTime, arg1, msg.sender);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'dev: invalid address'
    if devAddr != msg.sender:
        revert with 0, 'dev: wut?'
    devAddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function updateStartBlockHarvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlockHarvest = arg1
    emit UpdateStartBlockHarvest(startBlockHarvest, arg1, msg.sender);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'setFeeAddress: invalid address'
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
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

function updateReferralBonusBp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x73757064617465526566426f6e757350657263656e743a20696e76616c696420726566657272616c20626f6e757320626173697320706f696e74,
                    mem[222 len 6]
    if arg1 == refBonusBP:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73757064617465526566426f6e757350657263656e743a2073616d6520626f6e7573206270207365,
                    mem[204 len 24]
    refBonusBP = arg1
    emit ReferralBonusBpChanged(refBonusBP, arg1);
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    userInfo[arg1][address(msg.sender)].field_512 = 0
    stor1 = 1
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
                    require ext_code.size(sub_e5edd154Address)
                    call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devAddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_e5edd154Address)
                    call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * sub_56aaf8e0) - (poolInfo[arg1].field_512 * sub_56aaf8e0) / block.number - poolInfo[arg1].field_512 != sub_56aaf8e0:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_56aaf8e0) - (poolInfo[arg1].field_512 * sub_56aaf8e0):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_e5edd154Address)
                        call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_e5edd154Address)
                        call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * sub_56aaf8e0) - (poolInfo[arg1].field_512 * sub_56aaf8e0)
                        if (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / (block.number * sub_56aaf8e0) - (poolInfo[arg1].field_512 * sub_56aaf8e0) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_e5edd154Address)
                        call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddr, (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_e5edd154Address)
                        call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
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
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
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
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = 30
        mem[_128 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _129 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_129 + idx + 68] = mem[_128 + idx + 32]
                idx = idx + 32
                continue 
            mem[_129 + 68] = mem[_129 + 70 len 30]
            revert with memory
              from mem[64]
               len _129 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_138] = 26
            mem[_138 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_142 + idx + 68] = mem[_138 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 68] = mem[_142 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            require totalAllocPoint
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devAddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_181] = 26
                mem[_181 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _186 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_186 + idx + 68] = mem[_181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_186 + 68] = mem[_186 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _186 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _185 = mem[64]
            mem[64] = mem[64] + 64
            mem[_185] = 26
            mem[_185 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _196 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_196 + idx + 68] = mem[_185 + idx + 32]
                idx = idx + 32
                continue 
            mem[_196 + 68] = mem[_196 + 74 len 26]
            revert with memory
              from mem[64]
               len _196 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0) / block.number - poolInfo[idx].field_512 != sub_56aaf8e0:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0):
            _141 = mem[64]
            mem[64] = mem[64] + 64
            mem[_141] = 26
            mem[_141 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _146 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_146 + idx + 68] = mem[_141 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_146 + 68] = mem[_146 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _146 + -mem[64] + 100
            require totalAllocPoint
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devAddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _184 = mem[64]
                mem[64] = mem[64] + 64
                mem[_184] = 26
                mem[_184 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _193 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_193 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_193 + 68] = mem[_193 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _193 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _192 = mem[64]
            mem[64] = mem[64] + 64
            mem[_192] = 26
            mem[_192 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _206 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_206 + idx + 68] = mem[_192 + idx + 32]
                idx = idx + 32
                continue 
            mem[_206 + 68] = mem[_206 + 74 len 26]
            revert with memory
              from mem[64]
               len _206 + -mem[64] + 100
        require (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0)
        if (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _145 = mem[64]
        mem[64] = mem[64] + 64
        mem[_145] = 26
        mem[_145 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _152 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_152 + idx + 68] = mem[_145 + idx + 32]
                idx = idx + 32
                continue 
            mem[_152 + 68] = mem[_152 + 74 len 26]
            revert with memory
              from mem[64]
               len _152 + -mem[64] + 100
        require totalAllocPoint
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = 26
        mem[_165 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_e5edd154Address)
        call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args devAddr, (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_e5edd154Address)
        call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint:
            _191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_191] = 26
            mem[_191 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _203 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_203 + idx + 68] = mem[_191 + idx + 32]
                idx = idx + 32
                continue 
            mem[_203 + 68] = mem[_203 + 74 len 26]
            revert with memory
              from mem[64]
               len _203 + -mem[64] + 100
        require (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _202 = mem[64]
        mem[64] = mem[64] + 64
        mem[_202] = 26
        mem[_202 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _218 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_218 + idx + 68] = mem[_202 + idx + 32]
            idx = idx + 32
            continue 
        mem[_218 + 68] = mem[_218 + 74 len 26]
        revert with memory
          from mem[64]
           len _218 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
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
        _134 = mem[64]
        mem[64] = mem[64] + 64
        mem[_134] = 30
        mem[_134 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _135 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_135 + idx + 68] = mem[_134 + idx + 32]
                idx = idx + 32
                continue 
            mem[_135 + 68] = mem[_135 + 70 len 30]
            revert with memory
              from mem[64]
               len _135 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _144 = mem[64]
            mem[64] = mem[64] + 64
            mem[_144] = 26
            mem[_144 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _148 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_148 + idx + 68] = mem[_144 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_148 + 68] = mem[_148 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _148 + -mem[64] + 100
            require totalAllocPoint
            _162 = mem[64]
            mem[64] = mem[64] + 64
            mem[_162] = 26
            mem[_162 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devAddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _187 = mem[64]
                mem[64] = mem[64] + 64
                mem[_187] = 26
                mem[_187 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_192 + idx + 68] = mem[_187 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_192 + 68] = mem[_192 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _192 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_191] = 26
            mem[_191 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _202 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_202 + idx + 68] = mem[_191 + idx + 32]
                idx = idx + 32
                continue 
            mem[_202 + 68] = mem[_202 + 74 len 26]
            revert with memory
              from mem[64]
               len _202 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0) / block.number - poolInfo[idx].field_512 != sub_56aaf8e0:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0):
            _147 = mem[64]
            mem[64] = mem[64] + 64
            mem[_147] = 26
            mem[_147 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _152 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_152 + idx + 68] = mem[_147 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_152 + 68] = mem[_152 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _152 + -mem[64] + 100
            require totalAllocPoint
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 26
            mem[_167 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devAddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _190 = mem[64]
                mem[64] = mem[64] + 64
                mem[_190] = 26
                mem[_190 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _199 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_199 + idx + 68] = mem[_190 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_199 + 68] = mem[_199 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _199 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _198 = mem[64]
            mem[64] = mem[64] + 64
            mem[_198] = 26
            mem[_198 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _212 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_212 + idx + 68] = mem[_198 + idx + 32]
                idx = idx + 32
                continue 
            mem[_212 + 68] = mem[_212 + 74 len 26]
            revert with memory
              from mem[64]
               len _212 + -mem[64] + 100
        require (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0)
        if (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _151 = mem[64]
        mem[64] = mem[64] + 64
        mem[_151] = 26
        mem[_151 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _158 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_158 + idx + 68] = mem[_151 + idx + 32]
                idx = idx + 32
                continue 
            mem[_158 + 68] = mem[_158 + 74 len 26]
            revert with memory
              from mem[64]
               len _158 + -mem[64] + 100
        require totalAllocPoint
        _171 = mem[64]
        mem[64] = mem[64] + 64
        mem[_171] = 26
        mem[_171 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_e5edd154Address)
        call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args devAddr, (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_e5edd154Address)
        call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint:
            _197 = mem[64]
            mem[64] = mem[64] + 64
            mem[_197] = 26
            mem[_197 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _209 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_209 + idx + 68] = mem[_197 + idx + 32]
                idx = idx + 32
                continue 
            mem[_209 + 68] = mem[_209 + 74 len 26]
            revert with memory
              from mem[64]
               len _209 + -mem[64] + 100
        require (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _208 = mem[64]
        mem[64] = mem[64] + 64
        mem[_208] = 26
        mem[_208 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _224 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_224 + idx + 68] = mem[_208 + idx + 32]
            idx = idx + 32
            continue 
        mem[_224 + 68] = mem[_224 + 74 len 26]
        revert with memory
          from mem[64]
           len _224 + -mem[64] + 100
    emit EmissionRateUpdated(sub_56aaf8e0, arg1, msg.sender);
    sub_56aaf8e0 = arg1
}

function sub_85db228f(?) payable {
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
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
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
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require block.number - poolInfo[arg1].field_512
    if (block.number * sub_56aaf8e0) - (poolInfo[arg1].field_512 * sub_56aaf8e0) / block.number - poolInfo[arg1].field_512 != sub_56aaf8e0:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_56aaf8e0) - (poolInfo[arg1].field_512 * sub_56aaf8e0):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require (block.number * sub_56aaf8e0) - (poolInfo[arg1].field_512 * sub_56aaf8e0)
    if (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / (block.number * sub_56aaf8e0) - (poolInfo[arg1].field_512 * sub_56aaf8e0) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_56aaf8e0 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
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
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 30
            mem[_173 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_176 + idx + 68] = mem[_173 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _185 = mem[64]
                mem[64] = mem[64] + 64
                mem[_185] = 26
                mem[_185 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_189 + idx + 68] = mem[_185 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_189 + 68] = mem[_189 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _189 + -mem[64] + 100
                require totalAllocPoint
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_e5edd154Address)
                call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_e5edd154Address)
                call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_228] = 26
                    mem[_228 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _233 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_233 + idx + 68] = mem[_228 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_233 + 68] = mem[_233 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _233 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_232] = 26
                mem[_232 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _243 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_243 + idx + 68] = mem[_232 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_243 + 68] = mem[_243 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _243 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0) / block.number - poolInfo[idx].field_512 != sub_56aaf8e0:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0):
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = 26
                mem[_188 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _193 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_193 + idx + 68] = mem[_188 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_193 + 68] = mem[_193 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _193 + -mem[64] + 100
                require totalAllocPoint
                _208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_208] = 26
                mem[_208 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_e5edd154Address)
                call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_e5edd154Address)
                call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_231] = 26
                    mem[_231 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _240 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_240 + idx + 68] = mem[_231 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_240 + 68] = mem[_240 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _240 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_239] = 26
                mem[_239 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _253 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_253 + idx + 68] = mem[_239 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_253 + 68] = mem[_253 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _253 + -mem[64] + 100
            require (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0)
            if (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _192 = mem[64]
            mem[64] = mem[64] + 64
            mem[_192] = 26
            mem[_192 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _199 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_199 + idx + 68] = mem[_192 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_199 + 68] = mem[_199 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _199 + -mem[64] + 100
            require totalAllocPoint
            _212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_212] = 26
            mem[_212 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devAddr, (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint:
                _238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_238] = 26
                mem[_238 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _250 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_250 + idx + 68] = mem[_238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_250 + 68] = mem[_250 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _250 + -mem[64] + 100
            require (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _249 = mem[64]
            mem[64] = mem[64] + 64
            mem[_249] = 26
            mem[_249 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _265 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_265 + idx + 68] = mem[_249 + idx + 32]
                idx = idx + 32
                continue 
            mem[_265 + 68] = mem[_265 + 74 len 26]
            revert with memory
              from mem[64]
               len _265 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 16
    if stor16[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
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
            _201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_201] = 30
            mem[_201 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _202 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_202 + idx + 68] = mem[_201 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_202 + 68] = mem[_202 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _202 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = 26
                mem[_211 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _215 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_215 + idx + 68] = mem[_211 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_215 + 68] = mem[_215 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _215 + -mem[64] + 100
                require totalAllocPoint
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_e5edd154Address)
                call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_e5edd154Address)
                call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_254] = 26
                    mem[_254 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _259 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_259 + idx + 68] = mem[_254 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_259 + 68] = mem[_259 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _259 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_258] = 26
                mem[_258 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _269 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_269 + idx + 68] = mem[_258 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_269 + 68] = mem[_269 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _269 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0) / block.number - poolInfo[idx].field_512 != sub_56aaf8e0:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0):
                _214 = mem[64]
                mem[64] = mem[64] + 64
                mem[_214] = 26
                mem[_214 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _219 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_219 + idx + 68] = mem[_214 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_219 + 68] = mem[_219 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _219 + -mem[64] + 100
                require totalAllocPoint
                _234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_234] = 26
                mem[_234 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_e5edd154Address)
                call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devAddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_e5edd154Address)
                call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_257] = 26
                    mem[_257 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _266 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_266 + idx + 68] = mem[_257 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_266 + 68] = mem[_266 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _266 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_265] = 26
                mem[_265 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _279 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_279 + idx + 68] = mem[_265 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_279 + 68] = mem[_279 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _279 + -mem[64] + 100
            require (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0)
            if (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / (block.number * sub_56aaf8e0) - (poolInfo[idx].field_512 * sub_56aaf8e0) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _218 = mem[64]
            mem[64] = mem[64] + 64
            mem[_218] = 26
            mem[_218 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _225 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_225 + idx + 68] = mem[_218 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_225 + 68] = mem[_225 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _225 + -mem[64] + 100
            require totalAllocPoint
            _238 = mem[64]
            mem[64] = mem[64] + 64
            mem[_238] = 26
            mem[_238 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devAddr, (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_e5edd154Address)
            call sub_e5edd154Address.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint:
                _264 = mem[64]
                mem[64] = mem[64] + 64
                mem[_264] = 26
                mem[_264 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _276 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_276 + idx + 68] = mem[_264 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_276 + 68] = mem[_276 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _276 + -mem[64] + 100
            require (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = 26
            mem[_275 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_56aaf8e0 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_56aaf8e0 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _291 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_291 + idx + 68] = mem[_275 + idx + 32]
                idx = idx + 32
                continue 
            mem[_291 + 68] = mem[_291 + 74 len 26]
            revert with memory
              from mem[64]
               len _291 + -mem[64] + 100
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor16[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolIdForLpToken[address(arg2)] = poolInfo.length - 1
}



}
