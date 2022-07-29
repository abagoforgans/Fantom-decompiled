contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address sub_ca9f1d2eAddress;
address devaddr;
uint256 bonusEndBlock;
uint256 sub_001d0a8c;
uint256 BONUS_MULTIPLIER;
address taxAddress;
address sub_5cf27922Address;
uint256 stakingRatio;
mapping of uint8 stor9;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726057;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726059;
array of uint16 stor89717814153306320011181716697424560163256864414616650038987186496166826726060;

function sub_001d0a8c(?) payable {
    return sub_001d0a8c
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
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function stakingRatio() payable {
    return stakingRatio
}

function startBlock() payable {
    return startBlock
}

function sub_5cf27922(?) payable {
    return sub_5cf27922Address
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function taxAddress() payable {
    return taxAddress
}

function sub_ca9f1d2e(?) payable {
    return sub_ca9f1d2eAddress
}

function lpTokenExistsInPool(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_e37540ef(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stakingRatio = arg1
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    BONUS_MULTIPLIER = arg1
}

function updateLpTokenExists(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor9[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - arg1:
            return 0
        if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
    if arg1 >= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if bonusEndBlock > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - arg1:
        if arg2 - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 - bonusEndBlock)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / bonusEndBlock - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if arg2 - bonusEndBlock < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
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
                if block.number <= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(sub_ca9f1d2eAddress)
                        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_ca9f1d2eAddress)
                        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_5cf27922Address, 0 / totalAllocPoint / 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_ca9f1d2eAddress)
                        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ca9f1d2eAddress)
                            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_ca9f1d2eAddress)
                            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_5cf27922Address, 0 / totalAllocPoint / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_ca9f1d2eAddress)
                            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_5cf27922Address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_512 >= bonusEndBlock:
                        if poolInfo[arg1].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[arg1].field_512:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(sub_ca9f1d2eAddress)
                            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_ca9f1d2eAddress)
                            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_5cf27922Address, 0 / totalAllocPoint / 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_ca9f1d2eAddress)
                            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_001d0a8c) - (poolInfo[arg1].field_512 * sub_001d0a8c) / block.number - poolInfo[arg1].field_512 != sub_001d0a8c:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.number * sub_001d0a8c) - (poolInfo[arg1].field_512 * sub_001d0a8c):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / (block.number * sub_001d0a8c) - (poolInfo[arg1].field_512 * sub_001d0a8c) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if bonusEndBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if poolInfo[arg1].field_512 > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not bonusEndBlock - poolInfo[arg1].field_512:
                            if block.number - bonusEndBlock < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not block.number - bonusEndBlock:
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) / block.number - bonusEndBlock != sub_001d0a8c:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c):
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) != poolInfo[arg1].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if block.number - bonusEndBlock < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ca9f1d2eAddress)
                                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
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
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[arg1].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ca9f1d2eAddress)
                                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_55b66dd5(?) payable {
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
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
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
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
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
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint:
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
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
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
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_001d0a8c) - (poolInfo[arg1].field_512 * sub_001d0a8c) / block.number - poolInfo[arg1].field_512 != sub_001d0a8c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_001d0a8c) - (poolInfo[arg1].field_512 * sub_001d0a8c):
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
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / (block.number * sub_001d0a8c) - (poolInfo[arg1].field_512 * sub_001d0a8c) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint:
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
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - poolInfo[arg1].field_512:
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock:
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) / block.number - bonusEndBlock != sub_001d0a8c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c):
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if block.number - bonusEndBlock < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_001d0a8c * poolInfo[arg1].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
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
        if block.number <= bonusEndBlock:
            _577 = mem[64]
            mem[64] = mem[64] + 64
            mem[_577] = 30
            mem[_577 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _577 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_648] = 26
                mem[_648 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _660 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _660 + 68] = mem[idx + _648 + 32]
                        idx = idx + 32
                        continue 
                    mem[_660 + 68] = mem[_660 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _660 + -mem[64] + 100
                _695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_695] = 26
                mem[_695 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _758 = mem[64]
                mem[64] = mem[64] + 64
                mem[_758] = 26
                mem[_758 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_860] = 26
                    mem[_860 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _893 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _893 + 68] = mem[idx + _860 + 32]
                        idx = idx + 32
                        continue 
                    mem[_893 + 68] = mem[_893 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _893 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _875 = mem[64]
                mem[64] = mem[64] + 64
                mem[_875] = 26
                mem[_875 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _914 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _914 + 68] = mem[idx + _875 + 32]
                    idx = idx + 32
                    continue 
                mem[_914 + 68] = mem[_914 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _914 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_655] = 26
                mem[_655 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _669 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _669 + 68] = mem[idx + _655 + 32]
                        idx = idx + 32
                        continue 
                    mem[_669 + 68] = mem[_669 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _669 + -mem[64] + 100
                _700 = mem[64]
                mem[64] = mem[64] + 64
                mem[_700] = 26
                mem[_700 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _767 = mem[64]
                mem[64] = mem[64] + 64
                mem[_767] = 26
                mem[_767 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _874 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_874] = 26
                    mem[_874 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _911 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _911 + 68] = mem[idx + _874 + 32]
                        idx = idx + 32
                        continue 
                    mem[_911 + 68] = mem[_911 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _911 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_892] = 26
                mem[_892 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _934 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _934 + 68] = mem[idx + _892 + 32]
                    idx = idx + 32
                    continue 
                mem[_934 + 68] = mem[_934 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _934 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
                _659 = mem[64]
                mem[64] = mem[64] + 64
                mem[_659] = 26
                mem[_659 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _678 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _678 + 68] = mem[idx + _659 + 32]
                        idx = idx + 32
                        continue 
                    mem[_678 + 68] = mem[_678 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _678 + -mem[64] + 100
                _706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_706] = 26
                mem[_706 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_779] = 26
                mem[_779 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_891] = 26
                    mem[_891 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _931 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _931 + 68] = mem[idx + _891 + 32]
                        idx = idx + 32
                        continue 
                    mem[_931 + 68] = mem[_931 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _931 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _910 = mem[64]
                mem[64] = mem[64] + 64
                mem[_910] = 26
                mem[_910 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _951 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _951 + 68] = mem[idx + _910 + 32]
                    idx = idx + 32
                    continue 
                mem[_951 + 68] = mem[_951 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _951 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _668 = mem[64]
            mem[64] = mem[64] + 64
            mem[_668] = 26
            mem[_668 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _686 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _686 + 68] = mem[idx + _668 + 32]
                    idx = idx + 32
                    continue 
                mem[_686 + 68] = mem[_686 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _686 + -mem[64] + 100
            _713 = mem[64]
            mem[64] = mem[64] + 64
            mem[_713] = 26
            mem[_713 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_788] = 26
            mem[_788 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                _909 = mem[64]
                mem[64] = mem[64] + 64
                mem[_909] = 26
                mem[_909 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _948 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _948 + 68] = mem[idx + _909 + 32]
                    idx = idx + 32
                    continue 
                mem[_948 + 68] = mem[_948 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _948 + -mem[64] + 100
            if 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _930 = mem[64]
            mem[64] = mem[64] + 64
            mem[_930] = 26
            mem[_930 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _963 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _963 + 68] = mem[idx + _930 + 32]
                idx = idx + 32
                continue 
            mem[_963 + 68] = mem[_963 + 74 len 26]
            revert with memory
              from mem[64]
               len _963 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _579 = mem[64]
            mem[64] = mem[64] + 64
            mem[_579] = 30
            mem[_579 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _579 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_637] = 26
                mem[_637 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _642 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _642 + 68] = mem[idx + _637 + 32]
                        idx = idx + 32
                        continue 
                    mem[_642 + 68] = mem[_642 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _642 + -mem[64] + 100
                _666 = mem[64]
                mem[64] = mem[64] + 64
                mem[_666] = 26
                mem[_666 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _726 = mem[64]
                mem[64] = mem[64] + 64
                mem[_726] = 26
                mem[_726 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_836] = 26
                    mem[_836 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _844 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _844 + 68] = mem[idx + _836 + 32]
                        idx = idx + 32
                        continue 
                    mem[_844 + 68] = mem[_844 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _844 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_841] = 26
                mem[_841 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _855 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _855 + 68] = mem[idx + _841 + 32]
                    idx = idx + 32
                    continue 
                mem[_855 + 68] = mem[_855 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _855 + -mem[64] + 100
            if (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c) / block.number - poolInfo[idx].field_512 != sub_001d0a8c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c):
                _640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_640] = 26
                mem[_640 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _645 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _645 + 68] = mem[idx + _640 + 32]
                        idx = idx + 32
                        continue 
                    mem[_645 + 68] = mem[_645 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _645 + -mem[64] + 100
                _676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_676] = 26
                mem[_676 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _736 = mem[64]
                mem[64] = mem[64] + 64
                mem[_736] = 26
                mem[_736 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_840] = 26
                    mem[_840 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _852 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _852 + 68] = mem[idx + _840 + 32]
                        idx = idx + 32
                        continue 
                    mem[_852 + 68] = mem[_852 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _852 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _843 = mem[64]
                mem[64] = mem[64] + 64
                mem[_843] = 26
                mem[_843 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _868 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _868 + 68] = mem[idx + _843 + 32]
                    idx = idx + 32
                    continue 
                mem[_868 + 68] = mem[_868 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _868 + -mem[64] + 100
            if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_641] = 26
            mem[_641 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _649 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _649 + 68] = mem[idx + _641 + 32]
                    idx = idx + 32
                    continue 
                mem[_649 + 68] = mem[_649 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _649 + -mem[64] + 100
            _684 = mem[64]
            mem[64] = mem[64] + 64
            mem[_684] = 26
            mem[_684 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _746 = mem[64]
            mem[64] = mem[64] + 64
            mem[_746] = 26
            mem[_746 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                _842 = mem[64]
                mem[64] = mem[64] + 64
                mem[_842] = 26
                mem[_842 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _865 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _865 + 68] = mem[idx + _842 + 32]
                    idx = idx + 32
                    continue 
                mem[_865 + 68] = mem[_865 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _865 + -mem[64] + 100
            if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _851 = mem[64]
            mem[64] = mem[64] + 64
            mem[_851] = 26
            mem[_851 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _882 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _882 + 68] = mem[idx + _851 + 32]
                idx = idx + 32
                continue 
            mem[_882 + 68] = mem[_882 + 74 len 26]
            revert with memory
              from mem[64]
               len _882 + -mem[64] + 100
        _578 = mem[64]
        mem[64] = mem[64] + 64
        mem[_578] = 30
        mem[_578 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _578 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _600 = mem[64]
        mem[64] = mem[64] + 64
        mem[_600] = 30
        mem[_600 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _600 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _710 = mem[64]
                mem[64] = mem[64] + 64
                mem[_710] = 26
                mem[_710 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _723 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _723 + 68] = mem[idx + _710 + 32]
                        idx = idx + 32
                        continue 
                    mem[_723 + 68] = mem[_723 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _723 + -mem[64] + 100
                _765 = mem[64]
                mem[64] = mem[64] + 64
                mem[_765] = 26
                mem[_765 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _823 = mem[64]
                mem[64] = mem[64] + 64
                mem[_823] = 26
                mem[_823 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1002 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1002] = 26
                    mem[_1002 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1029 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1029 + 68] = mem[idx + _1002 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1029 + 68] = mem[_1029 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1029 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1017 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1017] = 26
                mem[_1017 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1043 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1043 + 68] = mem[idx + _1017 + 32]
                    idx = idx + 32
                    continue 
                mem[_1043 + 68] = mem[_1043 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1043 + -mem[64] + 100
            if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) / block.number - bonusEndBlock != sub_001d0a8c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c):
                _718 = mem[64]
                mem[64] = mem[64] + 64
                mem[_718] = 26
                mem[_718 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _733 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _733 + 68] = mem[idx + _718 + 32]
                        idx = idx + 32
                        continue 
                    mem[_733 + 68] = mem[_733 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _733 + -mem[64] + 100
                _775 = mem[64]
                mem[64] = mem[64] + 64
                mem[_775] = 26
                mem[_775 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _827 = mem[64]
                mem[64] = mem[64] + 64
                mem[_827] = 26
                mem[_827 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1016 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1016] = 26
                    mem[_1016 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1040 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1040 + 68] = mem[idx + _1016 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1040 + 68] = mem[_1040 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1040 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1028 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1028] = 26
                mem[_1028 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1056 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1056 + 68] = mem[idx + _1028 + 32]
                    idx = idx + 32
                    continue 
                mem[_1056 + 68] = mem[_1056 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1056 + -mem[64] + 100
            if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _722 = mem[64]
            mem[64] = mem[64] + 64
            mem[_722] = 26
            mem[_722 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _742 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _742 + 68] = mem[idx + _722 + 32]
                    idx = idx + 32
                    continue 
                mem[_742 + 68] = mem[_742 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _742 + -mem[64] + 100
            _784 = mem[64]
            mem[64] = mem[64] + 64
            mem[_784] = 26
            mem[_784 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _833 = mem[64]
            mem[64] = mem[64] + 64
            mem[_833] = 26
            mem[_833 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                _1027 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1027] = 26
                mem[_1027 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1053 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1053 + 68] = mem[idx + _1027 + 32]
                    idx = idx + 32
                    continue 
                mem[_1053 + 68] = mem[_1053 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1053 + -mem[64] + 100
            if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1039 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1039] = 26
            mem[_1039 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1067 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1067 + 68] = mem[idx + _1039 + 32]
                idx = idx + 32
                continue 
            mem[_1067 + 68] = mem[_1067 + 74 len 26]
            revert with memory
              from mem[64]
               len _1067 + -mem[64] + 100
        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _717 = mem[64]
            mem[64] = mem[64] + 64
            mem[_717] = 26
            mem[_717 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _730 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _730 + 68] = mem[idx + _717 + 32]
                    idx = idx + 32
                    continue 
                mem[_730 + 68] = mem[_730 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _730 + -mem[64] + 100
            _771 = mem[64]
            mem[64] = mem[64] + 64
            mem[_771] = 26
            mem[_771 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _826 = mem[64]
            mem[64] = mem[64] + 64
            mem[_826] = 26
            mem[_826 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, 0 / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1013] = 26
                mem[_1013 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1036 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1036 + 68] = mem[idx + _1013 + 32]
                    idx = idx + 32
                    continue 
                mem[_1036 + 68] = mem[_1036 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1036 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1026 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1026] = 26
            mem[_1026 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1050 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1050 + 68] = mem[idx + _1026 + 32]
                idx = idx + 32
                continue 
            mem[_1050 + 68] = mem[_1050 + 74 len 26]
            revert with memory
              from mem[64]
               len _1050 + -mem[64] + 100
        if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
            _721 = mem[64]
            mem[64] = mem[64] + 64
            mem[_721] = 26
            mem[_721 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _739 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _739 + 68] = mem[idx + _721 + 32]
                    idx = idx + 32
                    continue 
                mem[_739 + 68] = mem[_739 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _739 + -mem[64] + 100
            _782 = mem[64]
            mem[64] = mem[64] + 64
            mem[_782] = 26
            mem[_782 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _832 = mem[64]
            mem[64] = mem[64] + 64
            mem[_832] = 26
            mem[_832 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, 0 / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1025 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1025] = 26
                mem[_1025 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1047 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1047 + 68] = mem[idx + _1025 + 32]
                    idx = idx + 32
                    continue 
                mem[_1047 + 68] = mem[_1047 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1047 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1035 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1035] = 26
            mem[_1035 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1063 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1063 + 68] = mem[idx + _1035 + 32]
                idx = idx + 32
                continue 
            mem[_1063 + 68] = mem[_1063 + 74 len 26]
            revert with memory
              from mem[64]
               len _1063 + -mem[64] + 100
        if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _729 = mem[64]
        mem[64] = mem[64] + 64
        mem[_729] = 26
        mem[_729 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _749 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _749 + 68] = mem[idx + _729 + 32]
                idx = idx + 32
                continue 
            mem[_749 + 68] = mem[_749 + 74 len 26]
            revert with memory
              from mem[64]
               len _749 + -mem[64] + 100
        _789 = mem[64]
        mem[64] = mem[64] + 64
        mem[_789] = 26
        mem[_789 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_ca9f1d2eAddress)
        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _837 = mem[64]
        mem[64] = mem[64] + 64
        mem[_837] = 26
        mem[_837 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_ca9f1d2eAddress)
        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_ca9f1d2eAddress)
        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
            _1034 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1034] = 26
            mem[_1034 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1060 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1060 + 68] = mem[idx + _1034 + 32]
                idx = idx + 32
                continue 
            mem[_1060 + 68] = mem[_1060 + 74 len 26]
            revert with memory
              from mem[64]
               len _1060 + -mem[64] + 100
        if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1046 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1046] = 26
        mem[_1046 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1074 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _1074 + 68] = mem[idx + _1046 + 32]
            idx = idx + 32
            continue 
        mem[_1074 + 68] = mem[_1074 + 74 len 26]
        revert with memory
          from mem[64]
           len _1074 + -mem[64] + 100
}

function sub_828d783c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10^18:
        revert with 0, 'max yaba'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
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
        if block.number <= bonusEndBlock:
            _583 = mem[64]
            mem[64] = mem[64] + 64
            mem[_583] = 30
            mem[_583 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _583 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _654 = mem[64]
                mem[64] = mem[64] + 64
                mem[_654] = 26
                mem[_654 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _666 + 68] = mem[idx + _654 + 32]
                        idx = idx + 32
                        continue 
                    mem[_666 + 68] = mem[_666 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _666 + -mem[64] + 100
                _701 = mem[64]
                mem[64] = mem[64] + 64
                mem[_701] = 26
                mem[_701 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _764 = mem[64]
                mem[64] = mem[64] + 64
                mem[_764] = 26
                mem[_764 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_866] = 26
                    mem[_866 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _899 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _899 + 68] = mem[idx + _866 + 32]
                        idx = idx + 32
                        continue 
                    mem[_899 + 68] = mem[_899 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _899 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_881] = 26
                mem[_881 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _920 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _920 + 68] = mem[idx + _881 + 32]
                    idx = idx + 32
                    continue 
                mem[_920 + 68] = mem[_920 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _920 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_661] = 26
                mem[_661 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _675 + 68] = mem[idx + _661 + 32]
                        idx = idx + 32
                        continue 
                    mem[_675 + 68] = mem[_675 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _675 + -mem[64] + 100
                _706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_706] = 26
                mem[_706 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_773] = 26
                mem[_773 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _880 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_880] = 26
                    mem[_880 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _917 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _917 + 68] = mem[idx + _880 + 32]
                        idx = idx + 32
                        continue 
                    mem[_917 + 68] = mem[_917 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _917 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _898 = mem[64]
                mem[64] = mem[64] + 64
                mem[_898] = 26
                mem[_898 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _940 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _940 + 68] = mem[idx + _898 + 32]
                    idx = idx + 32
                    continue 
                mem[_940 + 68] = mem[_940 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _940 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
                _665 = mem[64]
                mem[64] = mem[64] + 64
                mem[_665] = 26
                mem[_665 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _684 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _684 + 68] = mem[idx + _665 + 32]
                        idx = idx + 32
                        continue 
                    mem[_684 + 68] = mem[_684 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _684 + -mem[64] + 100
                _712 = mem[64]
                mem[64] = mem[64] + 64
                mem[_712] = 26
                mem[_712 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[64] = mem[64] + 64
                mem[_785] = 26
                mem[_785 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_897] = 26
                    mem[_897 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _937 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _937 + 68] = mem[idx + _897 + 32]
                        idx = idx + 32
                        continue 
                    mem[_937 + 68] = mem[_937 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _937 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _916 = mem[64]
                mem[64] = mem[64] + 64
                mem[_916] = 26
                mem[_916 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _957 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _957 + 68] = mem[idx + _916 + 32]
                    idx = idx + 32
                    continue 
                mem[_957 + 68] = mem[_957 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _957 + -mem[64] + 100
            if (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _674 = mem[64]
            mem[64] = mem[64] + 64
            mem[_674] = 26
            mem[_674 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _692 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _692 + 68] = mem[idx + _674 + 32]
                    idx = idx + 32
                    continue 
                mem[_692 + 68] = mem[_692 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _692 + -mem[64] + 100
            _719 = mem[64]
            mem[64] = mem[64] + 64
            mem[_719] = 26
            mem[_719 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _794 = mem[64]
            mem[64] = mem[64] + 64
            mem[_794] = 26
            mem[_794 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                _915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_915] = 26
                mem[_915 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _954 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _954 + 68] = mem[idx + _915 + 32]
                    idx = idx + 32
                    continue 
                mem[_954 + 68] = mem[_954 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _954 + -mem[64] + 100
            if 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _936 = mem[64]
            mem[64] = mem[64] + 64
            mem[_936] = 26
            mem[_936 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _969 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _969 + 68] = mem[idx + _936 + 32]
                idx = idx + 32
                continue 
            mem[_969 + 68] = mem[_969 + 74 len 26]
            revert with memory
              from mem[64]
               len _969 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _585 = mem[64]
            mem[64] = mem[64] + 64
            mem[_585] = 30
            mem[_585 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _585 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _643 = mem[64]
                mem[64] = mem[64] + 64
                mem[_643] = 26
                mem[_643 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _648 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _648 + 68] = mem[idx + _643 + 32]
                        idx = idx + 32
                        continue 
                    mem[_648 + 68] = mem[_648 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _648 + -mem[64] + 100
                _672 = mem[64]
                mem[64] = mem[64] + 64
                mem[_672] = 26
                mem[_672 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[64] = mem[64] + 64
                mem[_732] = 26
                mem[_732 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _842 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_842] = 26
                    mem[_842 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _850 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _850 + 68] = mem[idx + _842 + 32]
                        idx = idx + 32
                        continue 
                    mem[_850 + 68] = mem[_850 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _850 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _847 = mem[64]
                mem[64] = mem[64] + 64
                mem[_847] = 26
                mem[_847 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _861 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _861 + 68] = mem[idx + _847 + 32]
                    idx = idx + 32
                    continue 
                mem[_861 + 68] = mem[_861 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _861 + -mem[64] + 100
            if (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c) / block.number - poolInfo[idx].field_512 != sub_001d0a8c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c):
                _646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_646] = 26
                mem[_646 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _651 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _651 + 68] = mem[idx + _646 + 32]
                        idx = idx + 32
                        continue 
                    mem[_651 + 68] = mem[_651 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _651 + -mem[64] + 100
                _682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_682] = 26
                mem[_682 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_742] = 26
                mem[_742 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_846] = 26
                    mem[_846 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _858 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _858 + 68] = mem[idx + _846 + 32]
                        idx = idx + 32
                        continue 
                    mem[_858 + 68] = mem[_858 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _858 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _849 = mem[64]
                mem[64] = mem[64] + 64
                mem[_849] = 26
                mem[_849 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _874 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _874 + 68] = mem[idx + _849 + 32]
                    idx = idx + 32
                    continue 
                mem[_874 + 68] = mem[_874 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _874 + -mem[64] + 100
            if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _647 = mem[64]
            mem[64] = mem[64] + 64
            mem[_647] = 26
            mem[_647 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _655 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _655 + 68] = mem[idx + _647 + 32]
                    idx = idx + 32
                    continue 
                mem[_655 + 68] = mem[_655 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _655 + -mem[64] + 100
            _690 = mem[64]
            mem[64] = mem[64] + 64
            mem[_690] = 26
            mem[_690 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _752 = mem[64]
            mem[64] = mem[64] + 64
            mem[_752] = 26
            mem[_752 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                _848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_848] = 26
                mem[_848 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _871 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _871 + 68] = mem[idx + _848 + 32]
                    idx = idx + 32
                    continue 
                mem[_871 + 68] = mem[_871 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _871 + -mem[64] + 100
            if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _857 = mem[64]
            mem[64] = mem[64] + 64
            mem[_857] = 26
            mem[_857 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _888 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _888 + 68] = mem[idx + _857 + 32]
                idx = idx + 32
                continue 
            mem[_888 + 68] = mem[_888 + 74 len 26]
            revert with memory
              from mem[64]
               len _888 + -mem[64] + 100
        _584 = mem[64]
        mem[64] = mem[64] + 64
        mem[_584] = 30
        mem[_584 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _584 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        _606 = mem[64]
        mem[64] = mem[64] + 64
        mem[_606] = 30
        mem[_606 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _606 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _716 = mem[64]
                mem[64] = mem[64] + 64
                mem[_716] = 26
                mem[_716 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _729 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _729 + 68] = mem[idx + _716 + 32]
                        idx = idx + 32
                        continue 
                    mem[_729 + 68] = mem[_729 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _729 + -mem[64] + 100
                _771 = mem[64]
                mem[64] = mem[64] + 64
                mem[_771] = 26
                mem[_771 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _829 = mem[64]
                mem[64] = mem[64] + 64
                mem[_829] = 26
                mem[_829 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1008] = 26
                    mem[_1008 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1035 + 68] = mem[idx + _1008 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1035 + 68] = mem[_1035 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1035 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1023 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1023] = 26
                mem[_1023 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1049 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1049 + 68] = mem[idx + _1023 + 32]
                    idx = idx + 32
                    continue 
                mem[_1049 + 68] = mem[_1049 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1049 + -mem[64] + 100
            if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) / block.number - bonusEndBlock != sub_001d0a8c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c):
                _724 = mem[64]
                mem[64] = mem[64] + 64
                mem[_724] = 26
                mem[_724 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _739 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _739 + 68] = mem[idx + _724 + 32]
                        idx = idx + 32
                        continue 
                    mem[_739 + 68] = mem[_739 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _739 + -mem[64] + 100
                _781 = mem[64]
                mem[64] = mem[64] + 64
                mem[_781] = 26
                mem[_781 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_833] = 26
                mem[_833 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1022 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1022] = 26
                    mem[_1022 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1046 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1046 + 68] = mem[idx + _1022 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1046 + 68] = mem[_1046 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1046 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1034 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1034] = 26
                mem[_1034 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1062 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1062 + 68] = mem[idx + _1034 + 32]
                    idx = idx + 32
                    continue 
                mem[_1062 + 68] = mem[_1062 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1062 + -mem[64] + 100
            if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _728 = mem[64]
            mem[64] = mem[64] + 64
            mem[_728] = 26
            mem[_728 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _748 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _748 + 68] = mem[idx + _728 + 32]
                    idx = idx + 32
                    continue 
                mem[_748 + 68] = mem[_748 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _748 + -mem[64] + 100
            _790 = mem[64]
            mem[64] = mem[64] + 64
            mem[_790] = 26
            mem[_790 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _839 = mem[64]
            mem[64] = mem[64] + 64
            mem[_839] = 26
            mem[_839 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                _1033 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1033] = 26
                mem[_1033 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1059 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1059 + 68] = mem[idx + _1033 + 32]
                    idx = idx + 32
                    continue 
                mem[_1059 + 68] = mem[_1059 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1059 + -mem[64] + 100
            if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1045 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1045] = 26
            mem[_1045 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1073 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1073 + 68] = mem[idx + _1045 + 32]
                idx = idx + 32
                continue 
            mem[_1073 + 68] = mem[_1073 + 74 len 26]
            revert with memory
              from mem[64]
               len _1073 + -mem[64] + 100
        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _723 = mem[64]
            mem[64] = mem[64] + 64
            mem[_723] = 26
            mem[_723 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _736 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _736 + 68] = mem[idx + _723 + 32]
                    idx = idx + 32
                    continue 
                mem[_736 + 68] = mem[_736 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _736 + -mem[64] + 100
            _777 = mem[64]
            mem[64] = mem[64] + 64
            mem[_777] = 26
            mem[_777 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _832 = mem[64]
            mem[64] = mem[64] + 64
            mem[_832] = 26
            mem[_832 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, 0 / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1019 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1019] = 26
                mem[_1019 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1042 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1042 + 68] = mem[idx + _1019 + 32]
                    idx = idx + 32
                    continue 
                mem[_1042 + 68] = mem[_1042 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1042 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1032 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1032] = 26
            mem[_1032 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1056 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1056 + 68] = mem[idx + _1032 + 32]
                idx = idx + 32
                continue 
            mem[_1056 + 68] = mem[_1056 + 74 len 26]
            revert with memory
              from mem[64]
               len _1056 + -mem[64] + 100
        if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
            _727 = mem[64]
            mem[64] = mem[64] + 64
            mem[_727] = 26
            mem[_727 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _745 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _745 + 68] = mem[idx + _727 + 32]
                    idx = idx + 32
                    continue 
                mem[_745 + 68] = mem[_745 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _745 + -mem[64] + 100
            _788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_788] = 26
            mem[_788 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _838 = mem[64]
            mem[64] = mem[64] + 64
            mem[_838] = 26
            mem[_838 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, 0 / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1031 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1031] = 26
                mem[_1031 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1053 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1053 + 68] = mem[idx + _1031 + 32]
                    idx = idx + 32
                    continue 
                mem[_1053 + 68] = mem[_1053 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1053 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1041 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1041] = 26
            mem[_1041 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1069 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1069 + 68] = mem[idx + _1041 + 32]
                idx = idx + 32
                continue 
            mem[_1069 + 68] = mem[_1069 + 74 len 26]
            revert with memory
              from mem[64]
               len _1069 + -mem[64] + 100
        if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _735 = mem[64]
        mem[64] = mem[64] + 64
        mem[_735] = 26
        mem[_735 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _755 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _755 + 68] = mem[idx + _735 + 32]
                idx = idx + 32
                continue 
            mem[_755 + 68] = mem[_755 + 74 len 26]
            revert with memory
              from mem[64]
               len _755 + -mem[64] + 100
        _795 = mem[64]
        mem[64] = mem[64] + 64
        mem[_795] = 26
        mem[_795 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_ca9f1d2eAddress)
        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _843 = mem[64]
        mem[64] = mem[64] + 64
        mem[_843] = 26
        mem[_843 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_ca9f1d2eAddress)
        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_ca9f1d2eAddress)
        call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
            _1040 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1040] = 26
            mem[_1040 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1066 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1066 + 68] = mem[idx + _1040 + 32]
                idx = idx + 32
                continue 
            mem[_1066 + 68] = mem[_1066 + 74 len 26]
            revert with memory
              from mem[64]
               len _1066 + -mem[64] + 100
        if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1052 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1052] = 26
        mem[_1052 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1080 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _1080 + 68] = mem[idx + _1052 + 32]
            idx = idx + 32
            continue 
        mem[_1080 + 68] = mem[_1080 + 74 len 26]
        revert with memory
          from mem[64]
           len _1080 + -mem[64] + 100
    sub_001d0a8c = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe7365743a20696e76616c6964206465706f7369742074617820626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
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
            if block.number <= bonusEndBlock:
                _638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_638] = 30
                mem[_638 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _638 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_709] = 26
                    mem[_709 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _721 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _721 + 68] = mem[idx + _709 + 32]
                            idx = idx + 32
                            continue 
                        mem[_721 + 68] = mem[_721 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _721 + -mem[64] + 100
                    _756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_756] = 26
                    mem[_756 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_819] = 26
                    mem[_819 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_921] = 26
                        mem[_921 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _954 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _954 + 68] = mem[idx + _921 + 32]
                            idx = idx + 32
                            continue 
                        mem[_954 + 68] = mem[_954 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _954 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _936 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_936] = 26
                    mem[_936 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _975 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _975 + 68] = mem[idx + _936 + 32]
                        idx = idx + 32
                        continue 
                    mem[_975 + 68] = mem[_975 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _975 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_716] = 26
                    mem[_716 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _730 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _730 + 68] = mem[idx + _716 + 32]
                            idx = idx + 32
                            continue 
                        mem[_730 + 68] = mem[_730 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _730 + -mem[64] + 100
                    _761 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_761] = 26
                    mem[_761 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_828] = 26
                    mem[_828 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _935 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_935] = 26
                        mem[_935 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _972 + 68] = mem[idx + _935 + 32]
                            idx = idx + 32
                            continue 
                        mem[_972 + 68] = mem[_972 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _972 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _953 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_953] = 26
                    mem[_953 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _995 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _995 + 68] = mem[idx + _953 + 32]
                        idx = idx + 32
                        continue 
                    mem[_995 + 68] = mem[_995 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _995 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
                    _720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_720] = 26
                    mem[_720 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _739 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _739 + 68] = mem[idx + _720 + 32]
                            idx = idx + 32
                            continue 
                        mem[_739 + 68] = mem[_739 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _739 + -mem[64] + 100
                    _767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_767] = 26
                    mem[_767 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_840] = 26
                    mem[_840 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_952] = 26
                        mem[_952 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _992 + 68] = mem[idx + _952 + 32]
                            idx = idx + 32
                            continue 
                        mem[_992 + 68] = mem[_992 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _992 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_971] = 26
                    mem[_971 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1012 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1012 + 68] = mem[idx + _971 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1012 + 68] = mem[_1012 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1012 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _729 = mem[64]
                mem[64] = mem[64] + 64
                mem[_729] = 26
                mem[_729 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _747 + 68] = mem[idx + _729 + 32]
                        idx = idx + 32
                        continue 
                    mem[_747 + 68] = mem[_747 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _747 + -mem[64] + 100
                _774 = mem[64]
                mem[64] = mem[64] + 64
                mem[_774] = 26
                mem[_774 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _849 = mem[64]
                mem[64] = mem[64] + 64
                mem[_849] = 26
                mem[_849 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                    _970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_970] = 26
                    mem[_970 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1009 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1009 + 68] = mem[idx + _970 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1009 + 68] = mem[_1009 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1009 + -mem[64] + 100
                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_991] = 26
                mem[_991 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1024 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1024 + 68] = mem[idx + _991 + 32]
                    idx = idx + 32
                    continue 
                mem[_1024 + 68] = mem[_1024 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1024 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_640] = 30
                mem[_640 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _640 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_698] = 26
                    mem[_698 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _703 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _703 + 68] = mem[idx + _698 + 32]
                            idx = idx + 32
                            continue 
                        mem[_703 + 68] = mem[_703 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _703 + -mem[64] + 100
                    _727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_727] = 26
                    mem[_727 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_787] = 26
                    mem[_787 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_897] = 26
                        mem[_897 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _905 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _905 + 68] = mem[idx + _897 + 32]
                            idx = idx + 32
                            continue 
                        mem[_905 + 68] = mem[_905 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _905 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _902 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_902] = 26
                    mem[_902 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _916 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _916 + 68] = mem[idx + _902 + 32]
                        idx = idx + 32
                        continue 
                    mem[_916 + 68] = mem[_916 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _916 + -mem[64] + 100
                if (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c) / block.number - poolInfo[idx].field_512 != sub_001d0a8c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c):
                    _701 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_701] = 26
                    mem[_701 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _706 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _706 + 68] = mem[idx + _701 + 32]
                            idx = idx + 32
                            continue 
                        mem[_706 + 68] = mem[_706 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _706 + -mem[64] + 100
                    _737 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_737] = 26
                    mem[_737 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_797] = 26
                    mem[_797 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _901 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_901] = 26
                        mem[_901 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _913 + 68] = mem[idx + _901 + 32]
                            idx = idx + 32
                            continue 
                        mem[_913 + 68] = mem[_913 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _913 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _904 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_904] = 26
                    mem[_904 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _929 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _929 + 68] = mem[idx + _904 + 32]
                        idx = idx + 32
                        continue 
                    mem[_929 + 68] = mem[_929 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _929 + -mem[64] + 100
                if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _702 = mem[64]
                mem[64] = mem[64] + 64
                mem[_702] = 26
                mem[_702 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _710 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _710 + 68] = mem[idx + _702 + 32]
                        idx = idx + 32
                        continue 
                    mem[_710 + 68] = mem[_710 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _710 + -mem[64] + 100
                _745 = mem[64]
                mem[64] = mem[64] + 64
                mem[_745] = 26
                mem[_745 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _807 = mem[64]
                mem[64] = mem[64] + 64
                mem[_807] = 26
                mem[_807 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                    _903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_903] = 26
                    mem[_903 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _926 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _926 + 68] = mem[idx + _903 + 32]
                        idx = idx + 32
                        continue 
                    mem[_926 + 68] = mem[_926 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _926 + -mem[64] + 100
                if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _912 = mem[64]
                mem[64] = mem[64] + 64
                mem[_912] = 26
                mem[_912 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _943 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _943 + 68] = mem[idx + _912 + 32]
                    idx = idx + 32
                    continue 
                mem[_943 + 68] = mem[_943 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _943 + -mem[64] + 100
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 30
            mem[_639 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _639 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _661 = mem[64]
            mem[64] = mem[64] + 64
            mem[_661] = 30
            mem[_661 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _661 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_771] = 26
                    mem[_771 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _784 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _784 + 68] = mem[idx + _771 + 32]
                            idx = idx + 32
                            continue 
                        mem[_784 + 68] = mem[_784 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _784 + -mem[64] + 100
                    _826 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_826] = 26
                    mem[_826 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_884] = 26
                    mem[_884 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1063 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1063] = 26
                        mem[_1063 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1090 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1090 + 68] = mem[idx + _1063 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1090 + 68] = mem[_1090 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1090 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1078 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1078] = 26
                    mem[_1078 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1104 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1104 + 68] = mem[idx + _1078 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1104 + 68] = mem[_1104 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1104 + -mem[64] + 100
                if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) / block.number - bonusEndBlock != sub_001d0a8c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c):
                    _779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_779] = 26
                    mem[_779 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _794 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _794 + 68] = mem[idx + _779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_794 + 68] = mem[_794 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _794 + -mem[64] + 100
                    _836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_836] = 26
                    mem[_836 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _888 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_888] = 26
                    mem[_888 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1077 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1077] = 26
                        mem[_1077 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1101 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1101 + 68] = mem[idx + _1077 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1101 + 68] = mem[_1101 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1101 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1089] = 26
                    mem[_1089 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1117 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1117 + 68] = mem[idx + _1089 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1117 + 68] = mem[_1117 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1117 + -mem[64] + 100
                if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _783 = mem[64]
                mem[64] = mem[64] + 64
                mem[_783] = 26
                mem[_783 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _803 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _803 + 68] = mem[idx + _783 + 32]
                        idx = idx + 32
                        continue 
                    mem[_803 + 68] = mem[_803 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _803 + -mem[64] + 100
                _845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_845] = 26
                mem[_845 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_894] = 26
                mem[_894 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                    _1088 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1088] = 26
                    mem[_1088 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1114 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1114 + 68] = mem[idx + _1088 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1114 + 68] = mem[_1114 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1114 + -mem[64] + 100
                if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1100] = 26
                mem[_1100 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1128 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1128 + 68] = mem[idx + _1100 + 32]
                    idx = idx + 32
                    continue 
                mem[_1128 + 68] = mem[_1128 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1128 + -mem[64] + 100
            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _778 = mem[64]
                mem[64] = mem[64] + 64
                mem[_778] = 26
                mem[_778 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _791 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _791 + 68] = mem[idx + _778 + 32]
                        idx = idx + 32
                        continue 
                    mem[_791 + 68] = mem[_791 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _791 + -mem[64] + 100
                _832 = mem[64]
                mem[64] = mem[64] + 64
                mem[_832] = 26
                mem[_832 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _887 = mem[64]
                mem[64] = mem[64] + 64
                mem[_887] = 26
                mem[_887 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1074] = 26
                    mem[_1074 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1097 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1097 + 68] = mem[idx + _1074 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1097 + 68] = mem[_1097 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1097 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1087 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1087] = 26
                mem[_1087 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1111 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1111 + 68] = mem[idx + _1087 + 32]
                    idx = idx + 32
                    continue 
                mem[_1111 + 68] = mem[_1111 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1111 + -mem[64] + 100
            if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
                _782 = mem[64]
                mem[64] = mem[64] + 64
                mem[_782] = 26
                mem[_782 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _800 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _800 + 68] = mem[idx + _782 + 32]
                        idx = idx + 32
                        continue 
                    mem[_800 + 68] = mem[_800 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _800 + -mem[64] + 100
                _843 = mem[64]
                mem[64] = mem[64] + 64
                mem[_843] = 26
                mem[_843 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _893 = mem[64]
                mem[64] = mem[64] + 64
                mem[_893] = 26
                mem[_893 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1086 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1086] = 26
                    mem[_1086 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1108 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1108 + 68] = mem[idx + _1086 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1108 + 68] = mem[_1108 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1108 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1096 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1096] = 26
                mem[_1096 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1124 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1124 + 68] = mem[idx + _1096 + 32]
                    idx = idx + 32
                    continue 
                mem[_1124 + 68] = mem[_1124 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1124 + -mem[64] + 100
            if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _790 = mem[64]
            mem[64] = mem[64] + 64
            mem[_790] = 26
            mem[_790 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _810 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _810 + 68] = mem[idx + _790 + 32]
                    idx = idx + 32
                    continue 
                mem[_810 + 68] = mem[_810 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _810 + -mem[64] + 100
            _850 = mem[64]
            mem[64] = mem[64] + 64
            mem[_850] = 26
            mem[_850 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _898 = mem[64]
            mem[64] = mem[64] + 64
            mem[_898] = 26
            mem[_898 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                _1095 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1095] = 26
                mem[_1095 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1121 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1121 + 68] = mem[idx + _1095 + 32]
                    idx = idx + 32
                    continue 
                mem[_1121 + 68] = mem[_1121 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1121 + -mem[64] + 100
            if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1107] = 26
            mem[_1107 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1135 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1135 + 68] = mem[idx + _1107 + 32]
                idx = idx + 32
                continue 
            mem[_1135 + 68] = mem[_1135 + 74 len 26]
            revert with memory
              from mem[64]
               len _1135 + -mem[64] + 100
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
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x736164643a20696e76616c6964206465706f7369742074617820626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
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
            if block.number <= bonusEndBlock:
                _631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_631] = 30
                mem[_631 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _631 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _702 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_702] = 26
                    mem[_702 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _714 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _714 + 68] = mem[idx + _702 + 32]
                            idx = idx + 32
                            continue 
                        mem[_714 + 68] = mem[_714 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _714 + -mem[64] + 100
                    _749 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_749] = 26
                    mem[_749 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_812] = 26
                    mem[_812 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _914 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_914] = 26
                        mem[_914 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _947 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _947 + 68] = mem[idx + _914 + 32]
                            idx = idx + 32
                            continue 
                        mem[_947 + 68] = mem[_947 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _947 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_929] = 26
                    mem[_929 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _968 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _968 + 68] = mem[idx + _929 + 32]
                        idx = idx + 32
                        continue 
                    mem[_968 + 68] = mem[_968 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _968 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_709] = 26
                    mem[_709 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _723 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _723 + 68] = mem[idx + _709 + 32]
                            idx = idx + 32
                            continue 
                        mem[_723 + 68] = mem[_723 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _723 + -mem[64] + 100
                    _754 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_754] = 26
                    mem[_754 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_821] = 26
                    mem[_821 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_928] = 26
                        mem[_928 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _965 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _965 + 68] = mem[idx + _928 + 32]
                            idx = idx + 32
                            continue 
                        mem[_965 + 68] = mem[_965 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _965 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _946 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_946] = 26
                    mem[_946 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _988 + 68] = mem[idx + _946 + 32]
                        idx = idx + 32
                        continue 
                    mem[_988 + 68] = mem[_988 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _988 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
                    _713 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_713] = 26
                    mem[_713 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _732 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _732 + 68] = mem[idx + _713 + 32]
                            idx = idx + 32
                            continue 
                        mem[_732 + 68] = mem[_732 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _732 + -mem[64] + 100
                    _760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_760] = 26
                    mem[_760 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_833] = 26
                    mem[_833 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _945 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_945] = 26
                        mem[_945 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _985 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _985 + 68] = mem[idx + _945 + 32]
                            idx = idx + 32
                            continue 
                        mem[_985 + 68] = mem[_985 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _985 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_964] = 26
                    mem[_964 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1005 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1005 + 68] = mem[idx + _964 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1005 + 68] = mem[_1005 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1005 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _722 = mem[64]
                mem[64] = mem[64] + 64
                mem[_722] = 26
                mem[_722 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _740 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _740 + 68] = mem[idx + _722 + 32]
                        idx = idx + 32
                        continue 
                    mem[_740 + 68] = mem[_740 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _740 + -mem[64] + 100
                _767 = mem[64]
                mem[64] = mem[64] + 64
                mem[_767] = 26
                mem[_767 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _842 = mem[64]
                mem[64] = mem[64] + 64
                mem[_842] = 26
                mem[_842 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                    _963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_963] = 26
                    mem[_963 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1002 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1002 + 68] = mem[idx + _963 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1002 + 68] = mem[_1002 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1002 + -mem[64] + 100
                if 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _984 = mem[64]
                mem[64] = mem[64] + 64
                mem[_984] = 26
                mem[_984 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1017 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1017 + 68] = mem[idx + _984 + 32]
                    idx = idx + 32
                    continue 
                mem[_1017 + 68] = mem[_1017 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1017 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _633 = mem[64]
                mem[64] = mem[64] + 64
                mem[_633] = 30
                mem[_633 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _633 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_691] = 26
                    mem[_691 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _696 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _696 + 68] = mem[idx + _691 + 32]
                            idx = idx + 32
                            continue 
                        mem[_696 + 68] = mem[_696 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _696 + -mem[64] + 100
                    _720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_720] = 26
                    mem[_720 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _780 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_780] = 26
                    mem[_780 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _890 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_890] = 26
                        mem[_890 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _898 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _898 + 68] = mem[idx + _890 + 32]
                            idx = idx + 32
                            continue 
                        mem[_898 + 68] = mem[_898 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _898 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _895 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_895] = 26
                    mem[_895 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _909 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _909 + 68] = mem[idx + _895 + 32]
                        idx = idx + 32
                        continue 
                    mem[_909 + 68] = mem[_909 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _909 + -mem[64] + 100
                if (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c) / block.number - poolInfo[idx].field_512 != sub_001d0a8c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c):
                    _694 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_694] = 26
                    mem[_694 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _699 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _699 + 68] = mem[idx + _694 + 32]
                            idx = idx + 32
                            continue 
                        mem[_699 + 68] = mem[_699 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _699 + -mem[64] + 100
                    _730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_730] = 26
                    mem[_730 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _790 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_790] = 26
                    mem[_790 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _894 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_894] = 26
                        mem[_894 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _906 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _906 + 68] = mem[idx + _894 + 32]
                            idx = idx + 32
                            continue 
                        mem[_906 + 68] = mem[_906 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _906 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_897] = 26
                    mem[_897 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _922 + 68] = mem[idx + _897 + 32]
                        idx = idx + 32
                        continue 
                    mem[_922 + 68] = mem[_922 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _922 + -mem[64] + 100
                if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (poolInfo[idx].field_512 * sub_001d0a8c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_695] = 26
                mem[_695 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _703 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _703 + 68] = mem[idx + _695 + 32]
                        idx = idx + 32
                        continue 
                    mem[_703 + 68] = mem[_703 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _703 + -mem[64] + 100
                _738 = mem[64]
                mem[64] = mem[64] + 64
                mem[_738] = 26
                mem[_738 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_800] = 26
                mem[_800 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                    _896 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_896] = 26
                    mem[_896 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _919 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _919 + 68] = mem[idx + _896 + 32]
                        idx = idx + 32
                        continue 
                    mem[_919 + 68] = mem[_919 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _919 + -mem[64] + 100
                if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _905 = mem[64]
                mem[64] = mem[64] + 64
                mem[_905] = 26
                mem[_905 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _936 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _936 + 68] = mem[idx + _905 + 32]
                    idx = idx + 32
                    continue 
                mem[_936 + 68] = mem[_936 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _936 + -mem[64] + 100
            _632 = mem[64]
            mem[64] = mem[64] + 64
            mem[_632] = 30
            mem[_632 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _632 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _654 = mem[64]
            mem[64] = mem[64] + 64
            mem[_654] = 30
            mem[_654 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _654 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_764] = 26
                    mem[_764 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _777 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _777 + 68] = mem[idx + _764 + 32]
                            idx = idx + 32
                            continue 
                        mem[_777 + 68] = mem[_777 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _777 + -mem[64] + 100
                    _819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_819] = 26
                    mem[_819 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _877 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_877] = 26
                    mem[_877 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1056 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1056] = 26
                        mem[_1056 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1083 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1083 + 68] = mem[idx + _1056 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1083 + 68] = mem[_1083 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1083 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1071 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1071] = 26
                    mem[_1071 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1097 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1097 + 68] = mem[idx + _1071 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1097 + 68] = mem[_1097 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1097 + -mem[64] + 100
                if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) / block.number - bonusEndBlock != sub_001d0a8c:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c):
                    _772 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_772] = 26
                    mem[_772 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _787 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _787 + 68] = mem[idx + _772 + 32]
                            idx = idx + 32
                            continue 
                        mem[_787 + 68] = mem[_787 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _787 + -mem[64] + 100
                    _829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_829] = 26
                    mem[_829 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_881] = 26
                    mem[_881 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_5cf27922Address, 0 / totalAllocPoint / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ca9f1d2eAddress)
                    call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1070 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1070] = 26
                        mem[_1070 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1094 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1094 + 68] = mem[idx + _1070 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1094 + 68] = mem[_1094 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1094 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1082] = 26
                    mem[_1082 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1110 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1110 + 68] = mem[idx + _1082 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1110 + 68] = mem[_1110 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1110 + -mem[64] + 100
                if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_776] = 26
                mem[_776 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _796 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _796 + 68] = mem[idx + _776 + 32]
                        idx = idx + 32
                        continue 
                    mem[_796 + 68] = mem[_796 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _796 + -mem[64] + 100
                _838 = mem[64]
                mem[64] = mem[64] + 64
                mem[_838] = 26
                mem[_838 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _887 = mem[64]
                mem[64] = mem[64] + 64
                mem[_887] = 26
                mem[_887 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                    _1081 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1081] = 26
                    mem[_1081 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1107 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1107 + 68] = mem[idx + _1081 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1107 + 68] = mem[_1107 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1107 + -mem[64] + 100
                if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1093] = 26
                mem[_1093 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1121 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1121 + 68] = mem[idx + _1093 + 32]
                    idx = idx + 32
                    continue 
                mem[_1121 + 68] = mem[_1121 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1121 + -mem[64] + 100
            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _771 = mem[64]
                mem[64] = mem[64] + 64
                mem[_771] = 26
                mem[_771 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _784 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _784 + 68] = mem[idx + _771 + 32]
                        idx = idx + 32
                        continue 
                    mem[_784 + 68] = mem[_784 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _784 + -mem[64] + 100
                _825 = mem[64]
                mem[64] = mem[64] + 64
                mem[_825] = 26
                mem[_825 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_880] = 26
                mem[_880 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1067 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1067] = 26
                    mem[_1067 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1090 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1090 + 68] = mem[idx + _1067 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1090 + 68] = mem[_1090 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1090 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1080 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1080] = 26
                mem[_1080 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1104 + 68] = mem[idx + _1080 + 32]
                    idx = idx + 32
                    continue 
                mem[_1104 + 68] = mem[_1104 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1104 + -mem[64] + 100
            if (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_001d0a8c:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c):
                _775 = mem[64]
                mem[64] = mem[64] + 64
                mem[_775] = 26
                mem[_775 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _793 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _793 + 68] = mem[idx + _775 + 32]
                        idx = idx + 32
                        continue 
                    mem[_793 + 68] = mem[_793 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _793 + -mem[64] + 100
                _836 = mem[64]
                mem[64] = mem[64] + 64
                mem[_836] = 26
                mem[_836 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_886] = 26
                mem[_886 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_5cf27922Address, 0 / totalAllocPoint / 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ca9f1d2eAddress)
                call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1079 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1079] = 26
                    mem[_1079 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1101 + 68] = mem[idx + _1079 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1101 + 68] = mem[_1101 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1101 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1089 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1089] = 26
                mem[_1089 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1117 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1117 + 68] = mem[idx + _1089 + 32]
                    idx = idx + 32
                    continue 
                mem[_1117 + 68] = mem[_1117 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1117 + -mem[64] + 100
            if (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / (block.number * sub_001d0a8c) - (bonusEndBlock * sub_001d0a8c) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _783 = mem[64]
            mem[64] = mem[64] + 64
            mem[_783] = 26
            mem[_783 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _803 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _803 + 68] = mem[idx + _783 + 32]
                    idx = idx + 32
                    continue 
                mem[_803 + 68] = mem[_803 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _803 + -mem[64] + 100
            _843 = mem[64]
            mem[64] = mem[64] + 64
            mem[_843] = 26
            mem[_843 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _891 = mem[64]
            mem[64] = mem[64] + 64
            mem[_891] = 26
            mem[_891 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_5cf27922Address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ca9f1d2eAddress)
            call sub_ca9f1d2eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint:
                _1088 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1088] = 26
                mem[_1088 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1114 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1114 + 68] = mem[idx + _1088 + 32]
                    idx = idx + 32
                    continue 
                mem[_1114 + 68] = mem[_1114 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1114 + -mem[64] + 100
            if 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1100 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1100] = 26
            mem[_1100 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_001d0a8c * poolInfo[idx].field_256) - (bonusEndBlock * sub_001d0a8c * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_001d0a8c * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1128 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1128 + 68] = mem[idx + _1100 + 32]
                idx = idx + 32
                continue 
            mem[_1128 + 68] = mem[_1128 + 74 len 26]
            revert with memory
              from mem[64]
               len _1128 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storC65A[stor10.length] = arg1
    if block.number > startBlock:
        storC65A[stor10.length] = block.number
    else:
        storC65A[stor10.length] = startBlock
    storC65A[stor10.length] = 0
    storC65A[stor10.length] = arg3
}



}
