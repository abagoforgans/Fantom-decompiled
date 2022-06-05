contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const forTreasury = 5000

const commission = 5000

const BONUS_MULTIPLIER = 1

const MAXIMUM_DEPOSIT_FEE = 2000

const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
uint256 stor1;
address sub_75036fabAddress;
address devAddress;
address feeCommissionAddress;
address feeTreasuryAddress;
uint256 sub_d2d349e4;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;

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

function feeCommissionAddress() payable {
    return feeCommissionAddress
}

function devAddress() payable {
    return devAddress
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function feeTreasuryAddress() payable {
    return feeTreasuryAddress
}

function sub_75036fab(?) payable {
    return sub_75036fabAddress
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

function sub_d2d349e4(?) payable {
    return sub_d2d349e4
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeTreasuryAddress = arg1
    emit 0xe5944224: msg.sender, arg1
}

function setFeeCommissionAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeCommissionAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeCommissionAddress = arg1
    emit 0x151fe0e4: msg.sender, arg1
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'setDevAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setDevAddress: ZERO'
    devAddress = arg1
    emit 0xb5b607f3: msg.sender, arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number > startBlock:
        revert with 0, 'too late'
    startBlock = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        poolInfo[idx].field_512 = startBlock
        idx = idx + 1
        continue 
    emit SetStartBlock(startBlock);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    userInfo[arg1][address(msg.sender)].field_512 = 0
    userInfo[arg1][address(msg.sender)].field_768 = 0
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
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
                    require ext_code.size(sub_75036fabAddress)
                    call sub_75036fabAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_75036fabAddress)
                    call sub_75036fabAddress.0x40c10f19 with:
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
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_75036fabAddress)
                        call sub_75036fabAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_75036fabAddress)
                        call sub_75036fabAddress.0x40c10f19 with:
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
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_d2d349e4) - (poolInfo[arg1].field_512 * sub_d2d349e4) / block.number - poolInfo[arg1].field_512 != sub_d2d349e4:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_d2d349e4) - (poolInfo[arg1].field_512 * sub_d2d349e4):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_75036fabAddress)
                            call sub_75036fabAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_75036fabAddress)
                            call sub_75036fabAddress.0x40c10f19 with:
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
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_d2d349e4) - (poolInfo[arg1].field_512 * sub_d2d349e4)
                            if (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / (block.number * sub_d2d349e4) - (poolInfo[arg1].field_512 * sub_d2d349e4) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_75036fabAddress)
                            call sub_75036fabAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_75036fabAddress)
                            call sub_75036fabAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
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
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = 30
        mem[_165 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _166 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_166 + idx + 68] = mem[_165 + idx + 32]
                idx = idx + 32
                continue 
            mem[_166 + 68] = mem[_166 + 70 len 30]
            revert with memory
              from mem[64]
               len _166 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_177] = 26
            mem[_177 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_179 + idx + 68] = mem[_177 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 68] = mem[_179 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            require totalAllocPoint
            _196 = mem[64]
            mem[64] = mem[64] + 64
            mem[_196] = 26
            mem[_196 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_233] = 26
                mem[_233 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_238 + idx + 68] = mem[_233 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_238 + 68] = mem[_238 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _238 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_237] = 26
            mem[_237 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _248 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_248 + idx + 68] = mem[_237 + idx + 32]
                idx = idx + 32
                continue 
            mem[_248 + 68] = mem[_248 + 74 len 26]
            revert with memory
              from mem[64]
               len _248 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 26
            mem[_178 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_185 + idx + 68] = mem[_178 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            require totalAllocPoint
            _204 = mem[64]
            mem[64] = mem[64] + 64
            mem[_204] = 26
            mem[_204 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _245 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_245 + idx + 68] = mem[_236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_245 + 68] = mem[_245 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _245 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_244] = 26
            mem[_244 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _261 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_261 + idx + 68] = mem[_244 + idx + 32]
                idx = idx + 32
                continue 
            mem[_261 + 68] = mem[_261 + 74 len 26]
            revert with memory
              from mem[64]
               len _261 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4) / block.number - poolInfo[idx].field_512 != sub_d2d349e4:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4):
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_192 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_192 + 68] = mem[_192 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _192 + -mem[64] + 100
            require totalAllocPoint
            _209 = mem[64]
            mem[64] = mem[64] + 64
            mem[_209] = 26
            mem[_209 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_258 + idx + 68] = mem[_243 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_258 + 68] = mem[_258 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _258 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _277 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_277 + idx + 68] = mem[_257 + idx + 32]
                idx = idx + 32
                continue 
            mem[_277 + 68] = mem[_277 + 74 len 26]
            revert with memory
              from mem[64]
               len _277 + -mem[64] + 100
        require (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4)
        if (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _191 = mem[64]
        mem[64] = mem[64] + 64
        mem[_191] = 26
        mem[_191 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _200 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_200 + idx + 68] = mem[_191 + idx + 32]
                idx = idx + 32
                continue 
            mem[_200 + 68] = mem[_200 + 74 len 26]
            revert with memory
              from mem[64]
               len _200 + -mem[64] + 100
        require totalAllocPoint
        _215 = mem[64]
        mem[64] = mem[64] + 64
        mem[_215] = 26
        mem[_215 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_75036fabAddress)
        call sub_75036fabAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_75036fabAddress)
        call sub_75036fabAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint:
            _256 = mem[64]
            mem[64] = mem[64] + 64
            mem[_256] = 26
            mem[_256 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _274 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_274 + idx + 68] = mem[_256 + idx + 32]
                idx = idx + 32
                continue 
            mem[_274 + 68] = mem[_274 + 74 len 26]
            revert with memory
              from mem[64]
               len _274 + -mem[64] + 100
        require (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _273 = mem[64]
        mem[64] = mem[64] + 64
        mem[_273] = 26
        mem[_273 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _292 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_292 + idx + 68] = mem[_273 + idx + 32]
            idx = idx + 32
            continue 
        mem[_292 + 68] = mem[_292 + 74 len 26]
        revert with memory
          from mem[64]
           len _292 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
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
        _171 = mem[64]
        mem[64] = mem[64] + 64
        mem[_171] = 30
        mem[_171 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _172 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_172 + idx + 68] = mem[_171 + idx + 32]
                idx = idx + 32
                continue 
            mem[_172 + 68] = mem[_172 + 70 len 30]
            revert with memory
              from mem[64]
               len _172 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _183 = mem[64]
            mem[64] = mem[64] + 64
            mem[_183] = 26
            mem[_183 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_185 + idx + 68] = mem[_183 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            require totalAllocPoint
            _202 = mem[64]
            mem[64] = mem[64] + 64
            mem[_202] = 26
            mem[_202 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_239] = 26
                mem[_239 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_244 + idx + 68] = mem[_239 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_244 + 68] = mem[_244 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _244 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 26
            mem[_243 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_254 + idx + 68] = mem[_243 + idx + 32]
                idx = idx + 32
                continue 
            mem[_254 + 68] = mem[_254 + 74 len 26]
            revert with memory
              from mem[64]
               len _254 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_191 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_191 + 68] = mem[_191 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _191 + -mem[64] + 100
            require totalAllocPoint
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 26
            mem[_210 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_242] = 26
                mem[_242 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _251 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_251 + idx + 68] = mem[_242 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_251 + 68] = mem[_251 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _251 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _250 = mem[64]
            mem[64] = mem[64] + 64
            mem[_250] = 26
            mem[_250 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _267 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_267 + idx + 68] = mem[_250 + idx + 32]
                idx = idx + 32
                continue 
            mem[_267 + 68] = mem[_267 + 74 len 26]
            revert with memory
              from mem[64]
               len _267 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4) / block.number - poolInfo[idx].field_512 != sub_d2d349e4:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4):
            _190 = mem[64]
            mem[64] = mem[64] + 64
            mem[_190] = 26
            mem[_190 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_198 + idx + 68] = mem[_190 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 68] = mem[_198 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 100
            require totalAllocPoint
            _215 = mem[64]
            mem[64] = mem[64] + 64
            mem[_215] = 26
            mem[_215 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_249] = 26
                mem[_249 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _264 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_264 + idx + 68] = mem[_249 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_264 + 68] = mem[_264 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _264 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 26
            mem[_263 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _283 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_283 + idx + 68] = mem[_263 + idx + 32]
                idx = idx + 32
                continue 
            mem[_283 + 68] = mem[_283 + 74 len 26]
            revert with memory
              from mem[64]
               len _283 + -mem[64] + 100
        require (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4)
        if (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _197 = mem[64]
        mem[64] = mem[64] + 64
        mem[_197] = 26
        mem[_197 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _206 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_206 + idx + 68] = mem[_197 + idx + 32]
                idx = idx + 32
                continue 
            mem[_206 + 68] = mem[_206 + 74 len 26]
            revert with memory
              from mem[64]
               len _206 + -mem[64] + 100
        require totalAllocPoint
        _221 = mem[64]
        mem[64] = mem[64] + 64
        mem[_221] = 26
        mem[_221 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_75036fabAddress)
        call sub_75036fabAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_75036fabAddress)
        call sub_75036fabAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint:
            _262 = mem[64]
            mem[64] = mem[64] + 64
            mem[_262] = 26
            mem[_262 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _280 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_280 + idx + 68] = mem[_262 + idx + 32]
                idx = idx + 32
                continue 
            mem[_280 + 68] = mem[_280 + 74 len 26]
            revert with memory
              from mem[64]
               len _280 + -mem[64] + 100
        require (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _279 = mem[64]
        mem[64] = mem[64] + 64
        mem[_279] = 26
        mem[_279 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _298 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_298 + idx + 68] = mem[_279 + idx + 32]
            idx = idx + 32
            continue 
        mem[_298 + 68] = mem[_298 + 74 len 26]
        revert with memory
          from mem[64]
           len _298 + -mem[64] + 100
    emit EmissionRateUpdated(sub_d2d349e4, arg1, msg.sender);
    sub_d2d349e4 = arg1
}

function pendingGammaPulsar(uint256 arg1, address arg2) payable {
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
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require block.number - poolInfo[arg1].field_512
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require block.number - poolInfo[arg1].field_512
    if (block.number * sub_d2d349e4) - (poolInfo[arg1].field_512 * sub_d2d349e4) / block.number - poolInfo[arg1].field_512 != sub_d2d349e4:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_d2d349e4) - (poolInfo[arg1].field_512 * sub_d2d349e4):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require (block.number * sub_d2d349e4) - (poolInfo[arg1].field_512 * sub_d2d349e4)
    if (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / (block.number * sub_d2d349e4) - (poolInfo[arg1].field_512 * sub_d2d349e4) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_d2d349e4 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_d2d349e4 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 2000:
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
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
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
            _214 = mem[64]
            mem[64] = mem[64] + 64
            mem[_214] = 30
            mem[_214 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _217 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_217 + idx + 68] = mem[_214 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_217 + 68] = mem[_217 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _217 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_229] = 26
                mem[_229 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _231 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_231 + idx + 68] = mem[_229 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_231 + 68] = mem[_231 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _231 + -mem[64] + 100
                require totalAllocPoint
                _248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_248] = 26
                mem[_248 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_285] = 26
                    mem[_285 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _290 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_290 + idx + 68] = mem[_285 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_290 + 68] = mem[_290 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _290 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _289 = mem[64]
                mem[64] = mem[64] + 64
                mem[_289] = 26
                mem[_289 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _300 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_300 + idx + 68] = mem[_289 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_300 + 68] = mem[_300 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _300 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_230] = 26
                mem[_230 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_237 + idx + 68] = mem[_230 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_237 + 68] = mem[_237 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _237 + -mem[64] + 100
                require totalAllocPoint
                _256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_256] = 26
                mem[_256 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _288 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_288] = 26
                    mem[_288 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _297 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_297 + idx + 68] = mem[_288 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_297 + 68] = mem[_297 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _297 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _296 = mem[64]
                mem[64] = mem[64] + 64
                mem[_296] = 26
                mem[_296 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_313 + idx + 68] = mem[_296 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_313 + 68] = mem[_313 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _313 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4) / block.number - poolInfo[idx].field_512 != sub_d2d349e4:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4):
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _244 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_244 + idx + 68] = mem[_236 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_244 + 68] = mem[_244 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _244 + -mem[64] + 100
                require totalAllocPoint
                _261 = mem[64]
                mem[64] = mem[64] + 64
                mem[_261] = 26
                mem[_261 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_295] = 26
                    mem[_295 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _310 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_310 + idx + 68] = mem[_295 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_310 + 68] = mem[_310 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _310 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_309] = 26
                mem[_309 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _329 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_329 + idx + 68] = mem[_309 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_329 + 68] = mem[_329 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _329 + -mem[64] + 100
            require (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4)
            if (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 26
            mem[_243 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _252 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_252 + idx + 68] = mem[_243 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_252 + 68] = mem[_252 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _252 + -mem[64] + 100
            require totalAllocPoint
            _267 = mem[64]
            mem[64] = mem[64] + 64
            mem[_267] = 26
            mem[_267 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint:
                _308 = mem[64]
                mem[64] = mem[64] + 64
                mem[_308] = 26
                mem[_308 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _326 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_326 + idx + 68] = mem[_308 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_326 + 68] = mem[_326 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _326 + -mem[64] + 100
            require (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _325 = mem[64]
            mem[64] = mem[64] + 64
            mem[_325] = 26
            mem[_325 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _344 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_344 + idx + 68] = mem[_325 + idx + 32]
                idx = idx + 32
                continue 
            mem[_344 + 68] = mem[_344 + 74 len 26]
            revert with memory
              from mem[64]
               len _344 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1280 = arg3
    poolInfo[arg1].field_1024 = arg4
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 2000:
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
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
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
            _231 = mem[64]
            mem[64] = mem[64] + 64
            mem[_231] = 30
            mem[_231 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _232 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_232 + idx + 68] = mem[_231 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_232 + 68] = mem[_232 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _232 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _245 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_245 + idx + 68] = mem[_243 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_245 + 68] = mem[_245 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _245 + -mem[64] + 100
                require totalAllocPoint
                _262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_262] = 26
                mem[_262 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_299] = 26
                    mem[_299 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _304 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_304 + idx + 68] = mem[_299 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_304 + 68] = mem[_304 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _304 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_303] = 26
                mem[_303 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _314 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_314 + idx + 68] = mem[_303 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_314 + 68] = mem[_314 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _314 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_244] = 26
                mem[_244 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _251 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_251 + idx + 68] = mem[_244 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_251 + 68] = mem[_251 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _251 + -mem[64] + 100
                require totalAllocPoint
                _270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_270] = 26
                mem[_270 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_302] = 26
                    mem[_302 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _311 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_311 + idx + 68] = mem[_302 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_311 + 68] = mem[_311 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _311 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_310] = 26
                mem[_310 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _327 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_327 + idx + 68] = mem[_310 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_327 + 68] = mem[_327 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _327 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4) / block.number - poolInfo[idx].field_512 != sub_d2d349e4:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4):
                _250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_250] = 26
                mem[_250 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _258 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_258 + idx + 68] = mem[_250 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_258 + 68] = mem[_258 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _258 + -mem[64] + 100
                require totalAllocPoint
                _275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_275] = 26
                mem[_275 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_75036fabAddress)
                call sub_75036fabAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_309] = 26
                    mem[_309 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _324 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_324 + idx + 68] = mem[_309 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_324 + 68] = mem[_324 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _324 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _323 = mem[64]
                mem[64] = mem[64] + 64
                mem[_323] = 26
                mem[_323 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _343 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_343 + idx + 68] = mem[_323 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_343 + 68] = mem[_343 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _343 + -mem[64] + 100
            require (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4)
            if (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / (block.number * sub_d2d349e4) - (poolInfo[idx].field_512 * sub_d2d349e4) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
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
            require totalAllocPoint
            _281 = mem[64]
            mem[64] = mem[64] + 64
            mem[_281] = 26
            mem[_281 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_75036fabAddress)
            call sub_75036fabAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint:
                _322 = mem[64]
                mem[64] = mem[64] + 64
                mem[_322] = 26
                mem[_322 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _340 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_340 + idx + 68] = mem[_322 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_340 + 68] = mem[_340 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _340 + -mem[64] + 100
            require (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _339 = mem[64]
            mem[64] = mem[64] + 64
            mem[_339] = 26
            mem[_339 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * sub_d2d349e4 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_d2d349e4 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _358 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_358 + idx + 68] = mem[_339 + idx + 32]
                idx = idx + 32
                continue 
            mem[_358 + 68] = mem[_358 + 74 len 26]
            revert with memory
              from mem[64]
               len _358 + -mem[64] + 100
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg4
    poolInfo[poolInfo.length].field_1280 = arg3
}



}
