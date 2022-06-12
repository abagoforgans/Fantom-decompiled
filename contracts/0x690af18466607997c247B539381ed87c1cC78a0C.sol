contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address kinsAddress;
address devaddr;
address ilpAddress;
address farmVaultAddress;
uint256 kinsPerBlock;
uint256 nextUpdateBlock;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020071;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020072;

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
           bool(poolInfo[arg1].field_1440)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function farmVault() payable {
    return farmVaultAddress
}

function ilp() payable {
    return ilpAddress
}

function startBlock() payable {
    return startBlock
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
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

function nextUpdateBlock() payable {
    return nextUpdateBlock
}

function kinsPerBlock() payable {
    return kinsPerBlock
}

function kins() payable {
    return kinsAddress
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setstartblock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function getDaysSinceDeposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < userInfo[arg1][address(arg2)].field_512:
        return 0
    if userInfo[arg1][address(arg2)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    return (block.timestamp - userInfo[arg1][address(arg2)].field_512 / 24 * 3600)
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    BONUS_MULTIPLIER = arg1
}

function setFarmVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    farmVaultAddress = arg1
    return 1
}

function setImpermanentLossProtection(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    ilpAddress = arg1
    return 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if farmVaultAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x774f6e6c79204661726d5661756c74206f72204465762063616e20646f20746869,
                        mem[197 len 31]
    kinsPerBlock = arg1 / 24 * 3600
    if block.number + (24 * 3600) < block.number:
        revert with 0, 'SafeMath: addition overflow'
    nextUpdateBlock = block.number + (24 * 3600)
}

function getUserInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < userInfo[arg1][address(arg2)].field_512:
        return userInfo[arg1][address(arg2)].field_0, 
               userInfo[arg1][address(arg2)].field_256,
               0,
               userInfo[arg1][address(arg2)].field_768
    if userInfo[arg1][address(arg2)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    return userInfo[arg1][address(arg2)].field_0, 
           userInfo[arg1][address(arg2)].field_256,
           block.timestamp - userInfo[arg1][address(arg2)].field_512 / 24 * 3600,
           userInfo[arg1][address(arg2)].field_768
}

function checkForIL(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(ilpAddress)
    staticcall ilpAddress.getKinsPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ilpAddress)
    staticcall ilpAddress.getDepositValue(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args userInfo[arg1][address(arg2)].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= userInfo[arg1][address(arg2)].field_768:
        return 0
    if ext_call.return_data[0] > userInfo[arg1][address(arg2)].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (userInfo[arg1][address(arg2)].field_768 - ext_call.return_data[0] / ext_call.return_data[0])
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
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
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
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
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != kinsPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
        _149 = mem[64]
        mem[64] = mem[64] + 64
        mem[_149] = 30
        mem[_149 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _149 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = 26
            mem[_165 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _167 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _167 + 68] = mem[idx + _165 + 32]
                    idx = idx + 32
                    continue 
                mem[_167 + 68] = mem[_167 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _167 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _200 = mem[64]
                mem[64] = mem[64] + 64
                mem[_200] = 26
                mem[_200 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _206 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _206 + 68] = mem[idx + _200 + 32]
                    idx = idx + 32
                    continue 
                mem[_206 + 68] = mem[_206 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _206 + -mem[64] + 100
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _205 = mem[64]
            mem[64] = mem[64] + 64
            mem[_205] = 26
            mem[_205 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _216 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _216 + 68] = mem[idx + _205 + 32]
                idx = idx + 32
                continue 
            mem[_216 + 68] = mem[_216 + 74 len 26]
            revert with memory
              from mem[64]
               len _216 + -mem[64] + 100
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 26
            mem[_166 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _173 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _173 + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
                mem[_173 + 68] = mem[_173 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _173 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _204 = mem[64]
                mem[64] = mem[64] + 64
                mem[_204] = 26
                mem[_204 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _213 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _213 + 68] = mem[idx + _204 + 32]
                    idx = idx + 32
                    continue 
                mem[_213 + 68] = mem[_213 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _213 + -mem[64] + 100
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_212] = 26
            mem[_212 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _229 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _229 + 68] = mem[idx + _212 + 32]
                idx = idx + 32
                continue 
            mem[_229 + 68] = mem[_229 + 74 len 26]
            revert with memory
              from mem[64]
               len _229 + -mem[64] + 100
        if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != kinsPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock):
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 26
            mem[_172 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _180 + 68] = mem[idx + _172 + 32]
                    idx = idx + 32
                    continue 
                mem[_180 + 68] = mem[_180 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _180 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = 26
                mem[_211 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _226 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _226 + 68] = mem[idx + _211 + 32]
                    idx = idx + 32
                    continue 
                mem[_226 + 68] = mem[_226 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _226 + -mem[64] + 100
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _225 = mem[64]
            mem[64] = mem[64] + 64
            mem[_225] = 26
            mem[_225 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _243 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _243 + 68] = mem[idx + _225 + 32]
                idx = idx + 32
                continue 
            mem[_243 + 68] = mem[_243 + 74 len 26]
            revert with memory
              from mem[64]
               len _243 + -mem[64] + 100
        if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _179 = mem[64]
        mem[64] = mem[64] + 64
        mem[_179] = 26
        mem[_179 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _187 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _187 + 68] = mem[idx + _179 + 32]
                idx = idx + 32
                continue 
            mem[_187 + 68] = mem[_187 + 74 len 26]
            revert with memory
              from mem[64]
               len _187 + -mem[64] + 100
        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _224 = mem[64]
            mem[64] = mem[64] + 64
            mem[_224] = 26
            mem[_224 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                mem[idx + _240 + 68] = mem[idx + _224 + 32]
                idx = idx + 32
                continue 
            mem[_240 + 68] = mem[_240 + 74 len 26]
            revert with memory
              from mem[64]
               len _240 + -mem[64] + 100
        if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _239 = mem[64]
        mem[64] = mem[64] + 64
        mem[_239] = 26
        mem[_239 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _256 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _256 + 68] = mem[idx + _239 + 32]
            idx = idx + 32
            continue 
        mem[_256 + 68] = mem[_256 + 74 len 26]
        revert with memory
          from mem[64]
           len _256 + -mem[64] + 100
}

function pendingkins(uint256 arg1, address arg2) payable {
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
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != kinsPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock):
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
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function add(uint256 arg1, address arg2, address arg3, address arg4, bool arg5, bool arg6) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    if msg.sender == owner:
        if not arg6:
            require ext_code.size(ilpAddress)
            call ilpAddress.add(address arg1, address arg2, address arg3, bool arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg3), address(arg4), arg5
        else:
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
                _415 = mem[64]
                mem[64] = mem[64] + 64
                mem[_415] = 30
                mem[_415 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _415 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _463 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_463] = 26
                    mem[_463 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _466 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _466 + 68] = mem[idx + _463 + 32]
                            idx = idx + 32
                            continue 
                        mem[_466 + 68] = mem[_466 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _466 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _531 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_531] = 26
                        mem[_531 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _543 + 68] = mem[idx + _531 + 32]
                            idx = idx + 32
                            continue 
                        mem[_543 + 68] = mem[_543 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _543 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _542 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_542] = 26
                    mem[_542 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _560 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _560 + 68] = mem[idx + _542 + 32]
                        idx = idx + 32
                        continue 
                    mem[_560 + 68] = mem[_560 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _560 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _465 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_465] = 26
                    mem[_465 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _478 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _478 + 68] = mem[idx + _465 + 32]
                            idx = idx + 32
                            continue 
                        mem[_478 + 68] = mem[_478 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _478 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_541] = 26
                        mem[_541 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _557 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _557 + 68] = mem[idx + _541 + 32]
                            idx = idx + 32
                            continue 
                        mem[_557 + 68] = mem[_557 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _557 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _556 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_556] = 26
                    mem[_556 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _586 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _586 + 68] = mem[idx + _556 + 32]
                        idx = idx + 32
                        continue 
                    mem[_586 + 68] = mem[_586 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _586 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != kinsPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock):
                    _477 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_477] = 26
                    mem[_477 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _492 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _492 + 68] = mem[idx + _477 + 32]
                            idx = idx + 32
                            continue 
                        mem[_492 + 68] = mem[_492 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _492 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _555 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_555] = 26
                        mem[_555 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _583 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _583 + 68] = mem[idx + _555 + 32]
                            idx = idx + 32
                            continue 
                        mem[_583 + 68] = mem[_583 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _583 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _582 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_582] = 26
                    mem[_582 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _615 + 68] = mem[idx + _582 + 32]
                        idx = idx + 32
                        continue 
                    mem[_615 + 68] = mem[_615 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _615 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _491 = mem[64]
                mem[64] = mem[64] + 64
                mem[_491] = 26
                mem[_491 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _507 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _507 + 68] = mem[idx + _491 + 32]
                        idx = idx + 32
                        continue 
                    mem[_507 + 68] = mem[_507 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _507 + -mem[64] + 100
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _581 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_581] = 26
                    mem[_581 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _612 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _612 + 68] = mem[idx + _581 + 32]
                        idx = idx + 32
                        continue 
                    mem[_612 + 68] = mem[_612 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _612 + -mem[64] + 100
                if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _611 = mem[64]
                mem[64] = mem[64] + 64
                mem[_611] = 26
                mem[_611 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _645 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _645 + 68] = mem[idx + _611 + 32]
                    idx = idx + 32
                    continue 
                mem[_645 + 68] = mem[_645 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _645 + -mem[64] + 100
            require ext_code.size(ilpAddress)
            call ilpAddress.add(address arg1, address arg2, address arg3, bool arg4) with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), address(arg4), arg5
    else:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
        if not arg6:
            require ext_code.size(ilpAddress)
            call ilpAddress.add(address arg1, address arg2, address arg3, bool arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg3), address(arg4), arg5
        else:
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
                _432 = mem[64]
                mem[64] = mem[64] + 64
                mem[_432] = 30
                mem[_432 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _432 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_464] = 26
                    mem[_464 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _470 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _470 + 68] = mem[idx + _464 + 32]
                            idx = idx + 32
                            continue 
                        mem[_470 + 68] = mem[_470 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _470 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_534] = 26
                        mem[_534 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _548 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _548 + 68] = mem[idx + _534 + 32]
                            idx = idx + 32
                            continue 
                        mem[_548 + 68] = mem[_548 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _548 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_547] = 26
                    mem[_547 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _569 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _569 + 68] = mem[idx + _547 + 32]
                        idx = idx + 32
                        continue 
                    mem[_569 + 68] = mem[_569 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _569 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_469] = 26
                    mem[_469 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _483 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _483 + 68] = mem[idx + _469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_483 + 68] = mem[_483 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _483 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_546] = 26
                        mem[_546 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _566 + 68] = mem[idx + _546 + 32]
                            idx = idx + 32
                            continue 
                        mem[_566 + 68] = mem[_566 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _566 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _565 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_565] = 26
                    mem[_565 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _597 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _597 + 68] = mem[idx + _565 + 32]
                        idx = idx + 32
                        continue 
                    mem[_597 + 68] = mem[_597 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _597 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != kinsPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock):
                    _482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_482] = 26
                    mem[_482 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _498 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _498 + 68] = mem[idx + _482 + 32]
                            idx = idx + 32
                            continue 
                        mem[_498 + 68] = mem[_498 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _498 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _564 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_564] = 26
                        mem[_564 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _594 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _594 + 68] = mem[idx + _564 + 32]
                            idx = idx + 32
                            continue 
                        mem[_594 + 68] = mem[_594 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _594 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _593 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_593] = 26
                    mem[_593 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _628 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _628 + 68] = mem[idx + _593 + 32]
                        idx = idx + 32
                        continue 
                    mem[_628 + 68] = mem[_628 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _628 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_497] = 26
                mem[_497 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _512 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _512 + 68] = mem[idx + _497 + 32]
                        idx = idx + 32
                        continue 
                    mem[_512 + 68] = mem[_512 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _512 + -mem[64] + 100
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _592 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_592] = 26
                    mem[_592 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _625 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _625 + 68] = mem[idx + _592 + 32]
                        idx = idx + 32
                        continue 
                    mem[_625 + 68] = mem[_625 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _625 + -mem[64] + 100
                if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _624 = mem[64]
                mem[64] = mem[64] + 64
                mem[_624] = 26
                mem[_624 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _656 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _656 + 68] = mem[idx + _624 + 32]
                    idx = idx + 32
                    continue 
                mem[_656 + 68] = mem[_656 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _656 + -mem[64] + 100
            require ext_code.size(ilpAddress)
            call ilpAddress.add(address arg1, address arg2, address arg3, bool arg4) with:
                 gas gas_remaining wei
                args address(arg2), address(arg3), address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    storF3F7[stor8.length].field_0 = arg4
    storF3F7[stor8.length].field_160 = Mask(96, 0, arg5)
}

function set(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, bool arg6, bool arg7) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    if msg.sender == owner:
        if not arg7:
            require ext_code.size(ilpAddress)
            call ilpAddress.set(uint256 arg1, address arg2, address arg3, address arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg1), address(arg3), address(arg4), arg5, arg6
        else:
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
                _409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_409] = 30
                mem[_409 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _409 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _465 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_465] = 26
                    mem[_465 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _468 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _468 + 68] = mem[idx + _465 + 32]
                            idx = idx + 32
                            continue 
                        mem[_468 + 68] = mem[_468 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _468 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _533 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_533] = 26
                        mem[_533 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _545 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _545 + 68] = mem[idx + _533 + 32]
                            idx = idx + 32
                            continue 
                        mem[_545 + 68] = mem[_545 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _545 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_544] = 26
                    mem[_544 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _562 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _562 + 68] = mem[idx + _544 + 32]
                        idx = idx + 32
                        continue 
                    mem[_562 + 68] = mem[_562 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _562 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_467] = 26
                    mem[_467 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _480 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _480 + 68] = mem[idx + _467 + 32]
                            idx = idx + 32
                            continue 
                        mem[_480 + 68] = mem[_480 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _480 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_543] = 26
                        mem[_543 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _559 + 68] = mem[idx + _543 + 32]
                            idx = idx + 32
                            continue 
                        mem[_559 + 68] = mem[_559 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _559 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _558 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_558] = 26
                    mem[_558 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _588 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _588 + 68] = mem[idx + _558 + 32]
                        idx = idx + 32
                        continue 
                    mem[_588 + 68] = mem[_588 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _588 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != kinsPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock):
                    _479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_479] = 26
                    mem[_479 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _494 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _494 + 68] = mem[idx + _479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_494 + 68] = mem[_494 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _494 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _557 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_557] = 26
                        mem[_557 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _585 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _585 + 68] = mem[idx + _557 + 32]
                            idx = idx + 32
                            continue 
                        mem[_585 + 68] = mem[_585 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _585 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _584 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_584] = 26
                    mem[_584 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _617 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _617 + 68] = mem[idx + _584 + 32]
                        idx = idx + 32
                        continue 
                    mem[_617 + 68] = mem[_617 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _617 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _493 = mem[64]
                mem[64] = mem[64] + 64
                mem[_493] = 26
                mem[_493 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _509 + 68] = mem[idx + _493 + 32]
                        idx = idx + 32
                        continue 
                    mem[_509 + 68] = mem[_509 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _509 + -mem[64] + 100
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_583] = 26
                    mem[_583 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _614 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _614 + 68] = mem[idx + _583 + 32]
                        idx = idx + 32
                        continue 
                    mem[_614 + 68] = mem[_614 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _614 + -mem[64] + 100
                if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _613 = mem[64]
                mem[64] = mem[64] + 64
                mem[_613] = 26
                mem[_613 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _647 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _647 + 68] = mem[idx + _613 + 32]
                    idx = idx + 32
                    continue 
                mem[_647 + 68] = mem[_647 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _647 + -mem[64] + 100
            require ext_code.size(ilpAddress)
            call ilpAddress.set(uint256 arg1, address arg2, address arg3, address arg4, bool arg5) with:
                 gas gas_remaining wei
                args arg1, address(arg3), address(arg4), address(arg5), arg6
    else:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
        if not arg7:
            require ext_code.size(ilpAddress)
            call ilpAddress.set(uint256 arg1, address arg2, address arg3, address arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg1), address(arg3), address(arg4), arg5, arg6
        else:
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
                _412 = mem[64]
                mem[64] = mem[64] + 64
                mem[_412] = 30
                mem[_412 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _412 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _466 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_466] = 26
                    mem[_466 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _472 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _472 + 68] = mem[idx + _466 + 32]
                            idx = idx + 32
                            continue 
                        mem[_472 + 68] = mem[_472 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _472 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_536] = 26
                        mem[_536 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _550 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _550 + 68] = mem[idx + _536 + 32]
                            idx = idx + 32
                            continue 
                        mem[_550 + 68] = mem[_550 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _550 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_549] = 26
                    mem[_549 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _571 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _571 + 68] = mem[idx + _549 + 32]
                        idx = idx + 32
                        continue 
                    mem[_571 + 68] = mem[_571 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _571 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_471] = 26
                    mem[_471 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _485 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _485 + 68] = mem[idx + _471 + 32]
                            idx = idx + 32
                            continue 
                        mem[_485 + 68] = mem[_485 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _485 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _548 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_548] = 26
                        mem[_548 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _568 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _568 + 68] = mem[idx + _548 + 32]
                            idx = idx + 32
                            continue 
                        mem[_568 + 68] = mem[_568 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _568 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _567 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_567] = 26
                    mem[_567 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _599 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _599 + 68] = mem[idx + _567 + 32]
                        idx = idx + 32
                        continue 
                    mem[_599 + 68] = mem[_599 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _599 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != kinsPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock):
                    _484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_484] = 26
                    mem[_484 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _500 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _500 + 68] = mem[idx + _484 + 32]
                            idx = idx + 32
                            continue 
                        mem[_500 + 68] = mem[_500 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _500 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _566 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_566] = 26
                        mem[_566 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _596 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _596 + 68] = mem[idx + _566 + 32]
                            idx = idx + 32
                            continue 
                        mem[_596 + 68] = mem[_596 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _596 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _595 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_595] = 26
                    mem[_595 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _630 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _630 + 68] = mem[idx + _595 + 32]
                        idx = idx + 32
                        continue 
                    mem[_630 + 68] = mem[_630 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _630 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _499 = mem[64]
                mem[64] = mem[64] + 64
                mem[_499] = 26
                mem[_499 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _514 + 68] = mem[idx + _499 + 32]
                        idx = idx + 32
                        continue 
                    mem[_514 + 68] = mem[_514 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _514 + -mem[64] + 100
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_594] = 26
                    mem[_594 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _627 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _627 + 68] = mem[idx + _594 + 32]
                        idx = idx + 32
                        continue 
                    mem[_627 + 68] = mem[_627 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _627 + -mem[64] + 100
                if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _626 = mem[64]
                mem[64] = mem[64] + 64
                mem[_626] = 26
                mem[_626 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _658 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _658 + 68] = mem[idx + _626 + 32]
                    idx = idx + 32
                    continue 
                mem[_658 + 68] = mem[_658 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _658 + -mem[64] + 100
            require ext_code.size(ilpAddress)
            call ilpAddress.set(uint256 arg1, address arg2, address arg3, address arg4, bool arg5) with:
                 gas gas_remaining wei
                args arg1, address(arg3), address(arg4), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_1024 = arg4
    poolInfo[arg1].field_1280 = arg5
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1440 = Mask(96, 0, arg6)
}



}
